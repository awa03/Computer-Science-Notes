<h3>The Shell</h3>
- The shell is a text-based user interface that allows for the user to enter commands for a resulting on screen print
- SSH, or a secure shell, is actually not a shell at all. It is the communication protocol. The actual shell is running on the Unix host.

An operating system is a seed, a Kernel is its core, and the Shell is the outside of this. All the user can view is the shell, because the rest is hidden from the user.

Type|Description
-|-
`sh`|Based on an early shell
`bsh`|Good for scripting
`bash`|The bourne again shell
`zsh`|Based on bash, powerful language
`ash`|Very Small shell, used for system recovery
`ksh`|Written by Korn
`csh`|Scripting language that looks like C
`tcsh`|Like csh, has automatic command line completion

The fsu system uses `tcsh`

<h3>Logging into your Home Directory</h3>
Directories are a hierarchical tree
the `~` represents the home directory

The tree has its root at the top with `/` ("root") directory. It is called this because it is the basis or root of the directory hierarchy. 

`pwd`- Prints the working directory
`cd`- changes the directory

Therefore :
`cd ~`  -changes to the users home directory

To move up in the hierarchy we use `...`
Therefore : 
`cd ...`  - ... is a pointer to the next higher directory, so it will change to this.

`.` on the other hand represents the current directory
We can use these in combination to change directories such as: 
`cd ../banking` - will move up a directory and search for the banking directory
and- `cd ../..` will move up and then up again. If the user ends the entry with a slash explicitly (`cd ../../`) this says the last thing is a string in the directory

Absolute pathnames start with a slash
- specified absolute path is always relative to the root

`rmdir` only deletes empty directories
`ls -l` - list long

<strong>White</strong>- Ordinary file (white on a black screen)
<strong>Blue</strong>- Directory
<strong>Green</strong>- Executable file

`ls -a` - list all


<h3>Copy a File</h3>
- `cp` means to *"copy this file"*; use this to make a duplicate of a file
- Ways to express which file to copy

The form of the copy command is:
`cp existingFile newFile`

To confirm overwriting a file, so we dont lose the data, we use the following `-i` flag. If the file already exists the user will be told and given the option not to overwrite its contents

<strong>The . and .. Directories:</strong>
`mkdir freshDir`
`cd freshDir`

the `ls -a` command means list all. Used `ls -al`, or "long listing" in order to see the long listing. The display will look like this.

```
ls -al  
total 8  
drwx------ 2 lockwood CS-Faculty 4096 Feb 24 21:25 .  
drwx--x--x 21 lockwood CS-Faculty 4096 Feb 24 21:25 .
```

`cp ../thatFile .` - copy a file from the parent directory to the current directory
`mv ../thatFile .` - move a file from the parent directory to the current directory

<strong>Copy the entire directory</strong>
`cp -R ~/myDir/newFileDir/ ~/myOtherDir`
- `-R` means Recursive.

the flag `-p` preserves files attributes when being copied

<h3>Man Pages</h3>
- `man` is the Unix instruction manual describing every command
- `info` is the GNU augmentation to `man`
- `apropos` helps find an appropriate `man` topic

<strong>man Describes each Command</strong>
- if you need to find details about a command or its flags use: `man commandName`
- `man ls`, `man cp`, `man scp`

<strong>Search commands</strong>
`/` - Enter a search term
`n` - Find next entry
`N` - Find a previous entry
`q` - Quit

<strong>info was made in order to replace the outdated man pages. info is more like a book about unix instead of a catalog of commands. Many users prefer to use man to describe how to use a command, and man for more detail about a command.</strong>

```
info ls

The `ls' program lists information about files (of any type, including  
directories). Options and file arguments can be intermixed  
arbitrarily, as usual.  
For non-option command-line arguments that are directories, by  
default `ls' lists the contents of directories, not recursively, and  
omitting files with names beginning with `.'. For other non-option  
arguments, by default `ls' lists just the file name. If no non-option  
argument is specified, `ls' operates on the current directory, acting  
as if it had been invoked with a single argument of `.'.  
By default, the output is sorted alphabetically, according to the  
locale settings in effect.(1) If standard output is a terminal, the  
output is in columns (sorted vertically) and control characters are  
output as question marks; otherwise, the output is listed one per line  
and control characters are output as-is.  
--zz-Info: (coreutils.info.gz)ls invocation, 58 lines --Top--------------------------  
Welcome to Info version 4.13. Type h for help, m for menu item
```

<strong>Search command</strong>
`s` - Enter a search term
`}` - Find next entry
`{` - Find previous entry
`q` - Quit

`apropos` searches the man database for a string.
If you forget the command to make a directory. You could try:
- `apropos make directory` 
- or `apropros "make directory"` to search for the entire string

<h3>Pine - Email Client</h3>
- Unix account comes with an email accoutn
- `pine` is an email client from the University of Washington
- you can send email attachments through it

To enter pine type `pine` or `alpine`
To edit the automatic forward file enter:
`nano ~/.forward`
