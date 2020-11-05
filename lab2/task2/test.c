/**
 * @file test.c
 */

#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <fcntl.h>
#include <string.h>
 
#define BUFFER_LENGTH 256


int main(){

	FILE *fdWrite, *fdRead;

    size_t ret;
    char stringToSend[BUFFER_LENGTH];
	char receiveBuffer[BUFFER_LENGTH];

    printf("USER SPACE: Starting character device userspace test code example...\n");
    printf("USER SPACE: Author name: DISMAS EZECHUKWU\n");

    // Open the device with write access
    fdWrite = fopen("/dev/chardev", "w");
    if (fdWrite == NULL){
        perror("USER SPACE: Failed to open the /dev/chardev device for writing...\n");
        return errno;
    }

    printf("Please type a short string to send to the kernel module:\n");

	int srtingOk = 1;

    do {
	    // Read in a string (with spaces)
	    scanf("%[^\n]%*c", stringToSend);

	    if (strlen(stringToSend) > BUFFER_LENGTH) {
	    	perror("The entered string is too long! Try again.\n");
			int srtingOk = 0;
	    }
	} while(!srtingOk);

    printf("\nUSER SPACE: Writing message to the device [%s].\n", stringToSend);

    // Send the string to the LKM
    ret = fwrite(stringToSend, strlen(stringToSend) + 1, 1, fdWrite);

    if (ret != 1){
        perror("USER SPACE: Failed to write the message to the device.\n");
        return errno;
    }
 	
    fclose(fdWrite);

    printf("\nPress ENTER to read the data back from the device...\n");
    getchar();
 
    printf("USER SPACE: Reading data from the device...\n\n");

    // Open the device with read access
    fdRead = fopen("/dev/chardev", "r");

    if (fdRead == NULL){
        perror("USER SPACE: Failed to open the /dev/chardev device for reading...\n");
        return errno;
    }


    // Read the response from the LKM
    	ret = fread(receiveBuffer, strlen(stringToSend) + 1, 1, fdRead);

	    if (ret == 0){
	        perror("Failed to read the message from the device.");
	        return errno;
	    }
    	printf("The received message is: [%s]\n", receiveBuffer);

    fclose(fdRead);
    printf("End of program\n");

    return 0;
}