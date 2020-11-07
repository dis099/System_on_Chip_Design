/*
 *  led_sysfs.c - sysfs -> led kernel module
 */
#include <linux/kernel.h>    // Needed for KERN_INFO
#include <linux/kobject.h>   // using kobjects for the sysfs bindings
#include <linux/kthread.h>   // for using kthreads in the led flashing functionality

#include <linux/module.h>    // Needed by all modules
#include <linux/init.h>      // Needed for the macros

#include <linux/gpio.h>      // Needed for GPIO functions

#include <linux/delay.h>     // msleep() function

/***********************DISMAS: START ADDED ******************************/
#include <linux/interrupt.h> // Needed for IRQ code
/***********************DISMAS: END ADDED ******************************/

// Information displayed by the "modinfo" command
MODULE_DESCRIPTION("LED sysfs interface driver"); // Description of the module
MODULE_AUTHOR("DISMAS EZECHUKWU");                       // Author of the module
MODULE_LICENSE("GPL");                            // The license type --  will print a warning if non-open-source code in injected
MODULE_VERSION("0.1");                            // Version of the module

// Definition of variables
static bool ledState = 0;                // Stores the state of the LED
static char *module_label = "LED_SYSFS"; // Label for the messages printed by the module 
static char ledName[7] = "myled";        // Name of the LED
static unsigned int gpioLED = 992;       // Stores the GPIO ID of the LED that will be activated
static unsigned int period = 1000;       // blink period in ms
/***********************DISMAS: START ADDED ******************************/
static unsigned int gpioSW = 928;     // Stores the GPIO ID of the slide switch that will be monitored
static unsigned int irqNumber;        // Stores the the irqNumber of the switch
static bool ledOn = 0;                // Stores the state of the LED

module_param(gpioLED, int, 0);
module_param(gpioSW,  int, 0);
MODULE_PARM_DESC(gpioLED,"this is the  variable for the LED");
MODULE_PARM_DESC(gpioSW,"this is the  variable for the Switch");

// function prototype for custom irq handler
static irq_handler_t gpio_irq_handler(unsigned int irq, void *dev_id, struct pt_regs *regs);
/***********************DISMAS: END ADDED ******************************/


enum modes { OFF, ON, BLINK };      // enum for LED modes
static enum modes mode = ON;        // default mode on


/*
 ***************************************************
   Callback functions for blinking period and mode 
 ***************************************************
*/

// Callback function to display the LED mode
static ssize_t mode_show(struct  kobject *kobj, struct kobj_attribute *attr, char *buf) {
    switch(mode) {
        case OFF:   return sprintf(buf, "off\n"); 
        case ON:    return sprintf(buf, "on\n");
        case BLINK: return sprintf(buf, "blink\n");
        default:    return sprintf(buf, "LKM Error\n"); // shouldn't get here
    }
}

// Callback function to store the LED mode 
static ssize_t mode_store(struct kobject *kobj, struct kobj_attribute *attr, 
                            const char *buf, size_t count) {

    if (strncmp(buf, "on", count-1)==0) { 
        mode = ON; 
    } // compare with fixed number of chars, count-1 needed to exclude \n

    else if (strncmp(buf, "off", count-1)==0) { 
        mode = OFF; 
    }

    else if (strncmp(buf, "blink", count-1)==0) {
        mode = BLINK; 
    }

    return count;
}

// Callback function to display the LED blinking period
static ssize_t period_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf) {
    return sprintf(buf, "%d\n", period);
}

// Callback function to store LED blinking period
static ssize_t period_store(struct kobject *kobj, struct kobj_attribute *attr, 
                            const char *buf, size_t count) {

    unsigned int p;

    sscanf(buf, "%du", &p);        // read in the period as an unsigned int
    if ((p>1) && (p<=10000)) {    // validate range
        period = p;
    }
    return p;
}

/*
 *****************************************
   Attribute setup for the sysfs entries 
 *****************************************
*/

// helper macros to define the name and access levels of the kobj_attributes
// __ATTR(variable name, user rights mode, show function, store function)
static struct kobj_attribute period_attr = __ATTR(period, 0660, period_show, period_store);
static struct kobj_attribute mode_attr = __ATTR(mode, 0660, mode_show, mode_store);

// led_attrs is an array of attributes that is used to create the attribute group below
static struct attribute *led_attrs[] = {
    &period_attr.attr,
    &mode_attr.attr,
    NULL,
};

static struct attribute_group attr_group = {
    .name = ledName,
    .attrs = led_attrs,
};

static struct kobject *led_kobj;    // pointer to the kobject
static struct task_struct *task;    // pointer to the thread task


/*
 ***********************
   LED blinking thread 
 ***********************
*/


//***************************************************
// kthread loop to blink the LED
static int blink(void *arg) {

        //Using the sysfs file system to off, on and blink the led
        while(!kthread_should_stop()) {            //returns true when kthread_stop() is called
        set_current_state(TASK_RUNNING);
/***********************DISMAS: START ADDED ******************************/
            if (ledOn == 1) 
            {
                if(mode==BLINK) 
                    ledState = !ledState;              // if the mode is blink, then invert LED state

                else if(mode==ON) 
                    ledState = true;

                else 
                    ledState = false;

                gpio_set_value(gpioLED, ledState);     // send the LED state value to the GPIO

            }

            else   // IF THE SWWITCH IS IN THE OFF STATE
            {
                                // Turn off the LED
                gpio_set_value(gpioLED, 0);

            }
/***********************DISMAS: END ADDED ******************************/

                set_current_state(TASK_INTERRUPTIBLE);

                msleep(period/2);                      // sleep half of the period (cycle of on+off is one period)
        }
    return 0;
}
//*****************************************************///








/*
 ***************************
   Initialization function
 ***************************
*/

static int __init gpio_init(void) {
    int result = 0;

/***********************DISMAS: START OF GPIO INIT CODE ******************************/

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

/***********************DISMAS: END OF GPIO INIT CODE ******************************/

    // Create a entry in sysfs (/sys/kernel/lab/myled)
    sprintf(ledName, "myled");
    led_kobj = kobject_create_and_add("lab", kernel_kobj); // kernel_kobj points to /sys/kernel

    if(!led_kobj) {
        printk(KERN_ALERT "%s: failed to create kobject\n", module_label);
        return -ENOMEM; 
    }
    
    // add attributes to sysfs, for example /sys/kernel/lab/myled/mode
    result = sysfs_create_group(led_kobj, &attr_group);

    if(result) {
        printk(KERN_ALERT "%s: failed to create sysfs group\n", module_label);
        kobject_put(led_kobj);  // clean up by removing the kobject sysfs entry
        return result;
    }

    task = kthread_run(blink, NULL, "LED_blink_thread"); // start LED blinking thread

    if(IS_ERR(task)) {
        printk(KERN_ALERT "%s: failed to craete led blinking task\n", module_label);
        return PTR_ERR(task);
    }

    if (!gpio_is_valid(gpioLED)) {
        printk(KERN_INFO "%s: invalid LED GPIO \n", module_label);
        return -ENODEV; // No such device
    }

    gpio_request(gpioLED, "sysfs");           // request LED on GPIO992
    gpio_direction_output(gpioLED, ledState); // set gpio to be in output mode, second parameter will set the value
    gpio_export(gpioLED, false);             // export will make the gpio pin to appear in /sys/class/gpio
                                                 //    the second parameter will prevent direction from being changed

    return result;
}

/*
 ***************************
   Exit function (cleanup)
 ***************************
*/

static void __exit gpio_exit(void) {
    kthread_stop(task);     // stop LED blinking thread
    kobject_put(led_kobj);  // clean the kobject sysfs entry

    gpio_unexport(gpioLED); 
    gpio_free(gpioLED);

/***********************DISMAS: START ADDED ******************************/
      free_irq(irqNumber, NULL);
      
      gpio_unexport(gpioSW);
      gpio_free(gpioSW); 
            


    printk(KERN_INFO "%s: Module unloaded\n", module_label);
    printk(KERN_INFO "%s: GPIO %d (switch) is now unlinked from GPIO %d (LED)\n", module_label, gpioSW, gpioLED);
/***********************DISMAS: END ADDED ******************************/


        printk(KERN_INFO "%s: Module unloaded\n", module_label);
}


/***********************DISMAS: START ADDED ******************************/
static irq_handler_t gpio_irq_handler(unsigned int irq, void *dev_id, struct pt_regs *regs) {
    ledOn = gpio_get_value(gpioSW);     // read value of the slide switch
    gpio_set_value(gpioLED, ledOn);     // assign value of the slide switch to the LED
    return (irq_handler_t) IRQ_HANDLED; // announce that the IRQ has been handled correctly
}
/***********************DISMAS: END ADDED ******************************/

module_init(gpio_init);
module_exit(gpio_exit);