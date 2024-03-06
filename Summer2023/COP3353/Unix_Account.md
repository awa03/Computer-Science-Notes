`SSH` - the terminal that gives you the unix prompt
`SPC` & `SFTP` - allow the user to copy files to and from a remote host
'S' stands for secure, which means it is <b><i>Encrypted</i></b>

The `uptime` command allows the user to see how long since the last reboot. 

<h3>What is SSH?</h3>
1. It is an encrypted protocol for conducting two-way secure communication
2. This allows the user to view a text window, and type commands into a remote computer that responds with text replys.

`SSH` - Stands for "Secure Shell", this is opposed to "SH" which stands for "Shell" 

To logout enter the `exit` command or press <i>Ctrl-d</i>

The change password command is as follows:
`passwd`
This makes the user enter the new password twice.

`ls` or list, lists the current directorys contents. Flags can be added to the command as well. The syntax of such can seen below.
`ls -l myFile > myTextFile`
- `-l` is the flag, or option.
- `myFile` is the argument
- `>` is the redirection operator
- `myTextFile` is the redirection & piping

<strong>Command: </strong>The program you would like to run
<strong>Option: </strong>A message to the program to activate some kind of behavior
<strong>Argument: </strong>Data that's input to the program
<strong>Redirection and Piping: </strong>Send the programs output to someplace other than the screen

The `-l` flag stands for long, this allows the user to see additional information about the files

`uname -a` Tells you the host version, and its operating system.
`cat /etc/os-release` also allows the user to view the operating system that the Unix machine is running on
`cat /etc/system-release` allows the user to see in more detail the operating system
`lscpu` Displays the hardware in which your device is running on, the host device not local.
`cat /proc/meminfo` Displays the ammound in killobytes of memory that is installed

GNU/Linux uses the utilities from the GNU project, and the kernel from the Linux project. The  
commands you run at the command line are GNU programs.  
There are two kinds of commands:  
- Shell built-in commands  
- Unix utilities

`history` displays the history of recently typed commands
`kill` allows the user to terminate a child job of a parent process, this is only avalible in some shells such as bash. It is a unix command.

A useful tool may be the Unix manual which may be accessed through the `man` command. This command can be compounded to view other manuals. An example of this would be `man cp`, which will display a manual about the file copy command.

`which cd` tells the user that the cd command is built in
`which cat` tells the user that the `cat` command is the executable file `/bin/cat`
`which ll` This states that `ll` is simply an alias for `ls -l`

An <strong>alias</strong> is a shortcut. This maybe defined as `.tcshrc` or `.alias` in the home directory.

The `touch` command has two functions:
- if a file doesnt exist it creates an empty file of that name
- if a file does exist, it updates the time stamp to display the current time

`rm` is used to delete files. This maybe combined with other options to delete everything within a file for example, this can be done using the recursive flag `-r` 

The `echo` command takes a string and prints it to the screen. This maybe combined with tags such as `-i` for an interactive view.

You must be careful while renaming a file because it may overwrite another file. This may also apply to the move command `mv`, because the new file has the capacity to replace or overwrite the old filename. This can be protected against with a confirmation flag such as `-i`.


