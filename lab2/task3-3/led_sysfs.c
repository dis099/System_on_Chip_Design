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

enum modes { OFF, ON, BLINK };		// enum for LED modes
static enum modes mode = ON;		// default mode on


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

static struct kobject *led_kobj;	// pointer to the kobject
static struct task_struct *task;	// pointer to the thread task


/*
 ***********************
   LED blinking thread 
 ***********************
*/

// kthread loop to blink the LED
static int blink(void *arg) {

    while(!kthread_should_stop()) {            //returns true when kthread_stop() is called
        set_current_state(TASK_RUNNING);

        if(mode==BLINK) 
            ledState = !ledState;              // if the mode is blink, then invert LED state

        else if(mode==ON) 
            ledState = true;

        else 
            ledState = false;

        gpio_set_value(gpioLED, ledState);     // send the LED state value to the GPIO
        set_current_state(TASK_INTERRUPTIBLE);

        msleep(period/2);                      // sleep half of the period (cycle of on+off is one period)
    }
    return 0;
}


/*
 ***************************
   Initialization function
 ***************************
*/

static int __init gpio_init(void) {
	int result = 0;

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
		kobject_put(led_kobj);	// clean up by removing the kobject sysfs entry
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

	gpio_request(gpioLED, "sysfs");	          // request LED on GPIO992
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
	kthread_stop(task); 	// stop LED blinking thread
	kobject_put(led_kobj);	// clean the kobject sysfs entry

	gpio_unexport(gpioLED); 
	gpio_free(gpioLED);

    printk(KERN_INFO "%s: Module unloaded\n", module_label);
}

module_init(gpio_init);
module_exit(gpio_exit);