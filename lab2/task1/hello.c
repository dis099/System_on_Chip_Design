/*
 *  hello.c - simple kernel module
 */
#include <linux/module.h> /* Needed by all modules */
#include <linux/kernel.h> /* Needed for KERN_INFO  */
#include <linux/init.h>   /* Needed for the macros */


/* Information displayed by the "modinfo" command  */
MODULE_VERSION("0.1");                             /* Version of the module */
MODULE_DESCRIPTION("Simple Linux kernel module."); /* Description of the module*/
MODULE_AUTHOR("DISMAS EZECHUKWU");               /* Author of the module */
MODULE_LICENSE("GPL");                             /* The license type --  will print a warning if non-open-source code in injected*/


/* Module parameters */

/* Declaration of parameter "name" */
static char *name = "world";        /* Declaration and initialization of the parameter */
module_param(name, charp, S_IRUGO); /* charp - char pointer, S_IRUGO - can be read/not changed.*/
MODULE_PARM_DESC(name, "The text that is displayed in the kernel log."); /* Description of the parameter */


/* Function ran when the module is inserted with the "insmod" command */
static int __init hello_init(void)
{
    printk(KERN_INFO "Hello %s! :)\n", name);
    return 0;
}


/* Function ran when the module is removed with the "rmmod" command */
static void __exit hello_exit(void)
{
    printk(KERN_INFO "Goodbye cruel %s... :(\n", name);
}


module_init(hello_init);
module_exit(hello_exit);