# Lab 4
#### Name: Matthew Teets
#### Date: 3/2/22
#### Class: CSCI 3800

#

### **Description:**
This program combines the UDP server-client into one executable and allows communinication between itself and the other servers defined in the config file. 
For this program to work with multiple servers, the user must have at least one terminal window open and be connected to the csegrid. The client/server program can run on any gnode just fine. However, when running more than one it is recommended to run them on different gnodes. The config.txt contains the IP addresses of 4 gnode servers and 4 port numbers. The port numbers are command line arguments that must be entered when running the server programs (example below).         
**For this lab an additional 'location' command line argument is required after the port numnber.**

#

### **The program:**
- server_client4.c
  - Reads the config file into a struct
  - Creates the socket/address info using the struct
  - Creates and binds a DGRAM socket to the server address
  - Promts the user for a message to send to the server
  - Server remains open, listening for datagram packets from the client program
  - Messages from the client are processed, formatted, and printed to the terminal
  - These steps are looped until the program is manually terminated using Control + C

#

### **How to run:**
- Connect to CSE-grid
  - Example: ssh username@csegrid.ucdenver.pvt
  - Connect your terminal window(s) to this Linux server
- cd to the directory containing the c program, makefile, and config.txt

**Terminal window used to run server_client4.c**
```
  $ ssh csci-gnode-NUM   //Use this command to get each terminal to the correct gnode number (i.e., csci-gnode-01)
  $ make -f Makefile     // Compiles the c programs
  $ ./client4 [SERVER-PORT-NUMBER] [LOCATION]    // Command to run the executable
```
Example: $ ./client4 1101 1             
(Repeat this process with different port numbers and locations to connect more servers)
