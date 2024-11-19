
### File Extension

```
((\w+)\.(jpg|png|gif)$)
```

- File a word 
- Ensure There is a `.` inbetween the word and the extension
- Ensure file ends in either jpg, png, or gif

****

### Formatting 

```
([^\s].*)
```

- Select All Characters that arent spaces
- `[^s]` selects only characters that arent spaces
- `.*` will select everything

****

### Extracting Data From Log Entries

```
(\w+)\(([\w\.]+):(\d+)\)
```

- `(\w+)` will match charaters: will capture our method
- `\(([\w\.]+):(\d+)\)` will capture a string followed by :, and a number

