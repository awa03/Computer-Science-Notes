# Genesis From Hardware To Process
- John von Neumann invented _von Neumann computer architecture_
	- CPU
	- Memory Unit
	- I/O devices (eg. SSD and disks)
	- Programs are stored on storage devices
	- Programs copied to memory for execution
	- CPU reads each
- _Fetch-execute algorithm_
- The program counter is loaded with address of first instruction, during boot sequence
- The instruction register is loaded with the instruction from that address

## Booting Sequence 
- Address of first instruction is fixed
- Stored in _Read Only Memory_ (__ROM__)
- On i386 machines, __ROM__ stores a _Basic Input/Output system_ (__BIOS__)
- This was replaced with the _United Extended Firmware Interface_ (__UEFI__)
	- Needed for accessing storage greater than 2TB

## Booting
- _Performs Power-On Self Test_ (__POST__)
	- Checks memory and device for their presence and correct operations
	- Old computers you can hear memory counting (noises from hard drive and CDROM). 
- The _master boot record_ (__MBR__)
	- loaded from the boot device
	- stored at first logical sector on boot device
	- fits into single 4k byte disk sector (__boot sector__)
	- Describes physical layout of the disk
- __After getting info on boot device__
	- BIOS loads a more sophisticated loader from other sectors on disk
	- Loader loads OS

## OS Loaders
- Old linux loader, _LILO_ (__Linux Loader__)
	- Partly stored in MBR with the disk partition table
	- User can specify which disk partition and OS image to boot 
	- After loading kernel image, LILO sets the kernel mode and jumps to entry point
- Linux uses _GRUB_ now (__GRand Unified Bootloader__)

## Booting Sequence Brief
- CPU Jumps to Fixed Address in __ROM__
- Loads the BIOS (__UEFI__)
- Performs __POST__
- Loads the MBR (__GPT__) from boot device
- Loads kernel image
- Sets kernel mode

## Linux Initialization
- Trap table
- Interrupt handlers
- Scheduler
- Clock
- Kernel modules
- Process manager

### Process 1
- Initialized from _init_ (now _systemmd_ for parallelism) 
- ancestor of all processes
- Controls transitions between _runlevels_
- Executes startup and shutdown scripts for each runlevel

### Runlevels
0. shutdown
1. single-user
2. multi-user
3. full multi-user
4. X11

## Process Creation
- via `fork` system call family

## System Calls
- Allow us processes running at _user mode_ to access kernel functions that run under _kernel mode_ 
- Prevent processes from doing malicious operations
	- Halting system
	- Modifying MBR
- Implemented through trap instructions

#### Parent Process

```c
pid_t pid;
if((pid = fork()) == 0) {
	while(1){
		print("childs return value %d: I want to play.\n", pid);
	}
} else {
	while(1) {
		print("parent's return value %d: After the project.\n", pid);
	}
}
```

#### Child Process 

```c
pid_t pid;
if((pid = fork()) == 0) {
	while(1){
		print("childs return value %d: I want to play.\n", pid);
	}
} else {
	while(1) {
		print("parent's return value %d: After the project.\n", pid);
	}
}
```

#### Output

```txt
childs return value 0: I want to play.\n
childs return value 0: I want to play.\n
childs return value 0: I want to play.\n
...// context switch
parent's return value 3218: After the project.
parent's return value 3218: After the project.
parent's return value 3218: After the project.
...// context switch
childs return value 0: I want to play.\n
childs return value 0: I want to play.\n
childs return value 0: I want to play.\n
```

## Why Clone a Process?
- Simplifying parameter passing
	- Environment Variables, Permissions, etc
- Performance optimization
	- Copy on write
- A fork by itself is not very useful
- To make a process run a program we use `exec` system call
- `exec` starts a program by overwriting the current process

## Thread Creation
- use `pthread_create()` instead of using `fork()`
- Newly created thread shares current process address space and resources
- Efficient sharing of states
- Potential corruption