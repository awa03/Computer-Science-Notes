# Module 2 Test

**Aiden Allen**
**Oct 18th, 2024**

## Validation Test Plan

### Purpose

The purpose of this assignment is to use the program [Thumb Screw](https://www.irongeek.com/i.php?page=security/thumbscrew-software-usb-write-blocker)
in order toggle usb writing. I plan to use this application to prevent
accidental write operations while observing data in my flash drive. This
can be beneficial in forensic applications to ensure the integrity of the
data is maintained.

### Equipment

-   Thumbscrew: USB Write Blocker
-   USB Drive (for testing Thumbscrew)
-   OS: Windows 10, Running in a VM
-   Laptop (HP Pavilion)

### Procedure

1.  Attempt to write a file to the drive
2.  Verify that the write was successful

Now that we have our base case in mind we can move on to testing the
Thumbscrew software.

3.  Run Thumbscrew as an Administrator, needed due to the way in which
    Thumbscrew operates
4.  Open Thumbscrew and **Disable** USB write operations
5.  Attempt to write a multitude of files, including hidden ones, in
    order to validate write blocking functionality

### Expected Results

I expect the program to block all write operations entirely. I am
expecting a prompt to display stating that I can not write to this USB,
however I am not expecting it to provide me with a reason why write
operations are blocked, since the documentation for thumbscrew states:

<blockquote>
    All Thumbscrew really does is flip a bit in the registry at:
    HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\StorageDevicePolicies\WriteProtect
</blockquote>

I would classify a successful result as blocking all write operations.
Essentially by making the USB read only.

****
