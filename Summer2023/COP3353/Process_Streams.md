
<h3>Nano Text Editor</h3>
- Pico - the email editor for the Pine email client
- Nano - the GNU clone of pico
- Nano supports source code syntax highlighting

Nano has syntax highlighting which pico lacks. Nano doesn't come with syntax highlighting on by default. 

Command|Description
-|-
`Ctl-g`|Help
`Ctrl-x`|Exits help
`Ctl-k`|Cuts a whole line of text
`Ctl-u`|Pastes the whole line
`Ctl-o`|Saves your edits without quiting
`Ctl-x`|Asks to save, and then quits
`Ctl-w`|Enter a string to search for
`Alt-w`|Repeat the last search
`Alt-a`|Start marking text
`Alt-6`|Stop marking text, and copy it
`Ctl-u`|Paste the selected text

<h3>Kill with Top</h3>
- `top` is a full-screen performance monitoring tool used by administrator
- `top` can send "signals" to either a program or to Unix to end a job

`u` - Select only one user to show
`k` - Kill one of your own jobs
`q` - Quit top

You can terminate a process by sending a signal to its process ID. There are multiple different signals.
- Signal 15 - Termination signal
- Signal 9 - Kill signal (the Hammer)

Signal 15 is sent to the program and asks it nicely to shut down. For example in nano it will save its work in a backup file then end normally. This means however that a program may ignore the signal 15 instruction.

If the program wont close we use signal 9. Signal 9 is the kill hammer. It releases the cpu, memory, network, etc resources. 

<h3>Piping & Redirection</h3> 
`ls > myFile`
`ls` - Command to list files
`>` - "Redirection" operator to divert output to a file instead of the screen
`myFile` - The new destination for the output - write the output to this file

The *"Pipe operator"* redirects output from one program to the input of another program

`ls > myFile` - Creates a new file (or empties an existing file), it connects it to `stdout` and sends the directory listing to myFile.

This can be done with a number of commands such as `mail`.
`mail name < myFile`

`env | grep 'PWD'` - `env` runs and displays dozens of environment variables per line. `grep` receives these lines and searches for the one that contains the 'PWD' variable.

<h3>Symbolic Links</h3>
