# Bootstrap

## Introduction
This project involves bootstrapping your own computer or virtual machine from scratch. The tutorial aims to guide you through the process of writing a minimal program that can print "OK" on the screen, providing insights into operating system fundamentals.

## The Boot Process

### Firmware
The motherboard is built in a way that the CPU will find a pre-installed program in a read-only or flash memory. This program is called the firmware of the system but is often referred to as the BIOS (Basic Input/Output System).

### Boot Loader
The boot loader (also called boot manager) is a program that is compiled and stored on disk. Its role is to again examine what the machine looks like; the BIOS will provide some information but the boot loader knows more about how the file system is arranged on the disk etc.

### Operating System
The operating system will start by taking control over the hardware. It will move to 64-bit mode (if that is not already done), create a stack, set up the interrupt descriptor table, initialize virtual memory etc. It will then organize the task scheduler, the file system, and hundreds of other things before it launches services for users to access.

A large operating system is divided into modules and not all modules need to be provided in the kernel when the system boots. Kernel modules can be brought in at a later stage depending on how the user wishes to use the system. This modularity allows the system to be modified to handle new hardware etc.

### Some Tools to Get You Going
In order to write a small master boot record, we need an assembler. The nasm assembler will serve our purpose. We also need a machine to run on, and although you could use our own laptop this would be too cumbersome. It is much easier to use a virtual machine or emulator. One popular choice is the QEMU emulator, a system that can not only virtualize a machine but can also be configured to virtualize just about any type of hardware.
