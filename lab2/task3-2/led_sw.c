/*
 *  led_sw.c - switch -> led kernel module
 */
#include <linux/module.h>    // Needed by all modules
#include <linux/kernel.h>    // Needed for KERN_INFO
#include <linux/init.h>      // Needed for the macros
#include <linux/gpio.h>      // Needed for GPIO functions
#include <linux/interrupt.h> // Needed for IRQ code

// Information displayed by the "modinfo" command
MODULE_DESCRIPTION("LED Switch driver"); // Description of the module
MODULE_AUTHOR("DISMAS EZECHUKWU");              // Author of the module
MODULE_LICENSE("GPL");                   // The license type --  will print a warning if non-open-source code in injected
MODULE_VERSION("0.1");                   // Version of the module

// Definition of variables
static char *module_label = "LED_SW"; // Label for the messages printed by the module 
static unsigned int gpioLED = 992;    // Stores the GPIO ID of the LED that will be activated
static unsigned int gpioSW = 928;     // Stores the GPIO ID of the slide switch that will be monitored
static unsigned int irqNumber;        // Stores the the irqNumber of the switch
static bool ledOn = 0;                // Stores the state of the LED

// function prototype for custom irq handler
static irq_handler_t gpio_irq_handler(unsigned int irq, void *dev_id, struct pt_regs *regs);

// Function ran when the module is inserted with the "insmod" command
static int __init gpio_init(void) {
    int result = 0;

    // Check validity of GPIO pins
    if (!gpio_is_valid(gpioLED)) {
        printk(KERN_INFO "%s: %d is an invalid LED GPIO \n", module_label, gpioLED);
        return -ENODEV; // No such device
    }

    if (!gpio_is_valid(gpioSW)) {
        printk(KERN_INFO "%s: %d is an invalid Switch GPIO \n", module_label, gpioSW);
        return -ENODEV;
    }

    // Configure GPIOs
    gpio_request(gpioSW, "sysfs");          // set up gpio switch
    gpio_direction_input(gpioSW);           // set switch as input
    gpio_set_debounce(gpioSW, 200);         // debounce with delay of 200ms
    gpio_export(gpioSW, false);             // make it appear in /sys/class/gpio

    gpio_request(gpioLED, "sysfs");         // request LED on gpioLED
    gpio_direction_output(gpioLED, ledOn);  // set gpio to be in output mode, second parameter will set the value
    gpio_export(gpioLED, false);            // export will make the gpio pin to appear in /sys/class/gpio/

    // GPIO numbers and IRQ numbers are not the same and this function will map them
    irqNumber = gpio_to_irq(gpioSW);
    printk(KERN_INFO "%s: switch %d is mapped to IRQ %d\n", module_label, gpioSW, irqNumber);

    // Request an interrupt line
    result = request_irq(irqNumber,                     // interrupt number requested
            (irq_handler_t) gpio_irq_handler,           // pointer to the handler function
            IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING, // trigger both on rising and falling signal edge
            "ledswitch_gpio_handler",                   // used in /proc/interrupts to identify the owner
            NULL);                                      // *dev_id for shared interrupt lines

    printk(KERN_INFO "%s: the interrupt request result is: %d\n", module_label, result);

    if (result == 0) {
        ledOn = gpio_get_value(gpioSW); 
        gpio_set_value(gpioLED, ledOn);
        printk(KERN_INFO "%s: GPIO %d (switch) is now linked to GPIO %d (LED)\n",
                 module_label, gpioSW, gpioLED);
    }

    return result;
}

// Function ran when the module is removed with the "rmmod" command
static void __exit gpio_exit(void) {
    gpio_unexport(gpioLED);

    free_irq(irqNumber, NULL);
    gpio_unexport(gpioSW);

    gpio_free(gpioLED);
    gpio_free(gpioSW);

    printk(KERN_INFO "%s: Module unloaded\n", module_label);
    printk(KERN_INFO "%s: GPIO %d (switch) is now unlinked from GPIO %d (LED)\n", 
            module_label, gpioSW, gpioLED);
}

static irq_handler_t gpio_irq_handler(unsigned int irq, void *dev_id, struct pt_regs *regs) {
    ledOn = gpio_get_value(gpioSW);     // read value of the slide switch
    gpio_set_value(gpioLED, ledOn);     // assign value of the slide switch to the LED
    
    return (irq_handler_t) IRQ_HANDLED; // announce that the IRQ has been handled correctly
}

module_init(gpio_init);
module_exit(gpio_exit);