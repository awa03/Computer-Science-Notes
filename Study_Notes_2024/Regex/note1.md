# Regex Notes Day 1

- `.` Represents any character
- `^` Caret
    - To find only from beginning of line use this
    - can also be used to negate when in `[]`
- `$` Selecting End of Line
    - `html$` will find only html at end of line
- `[a]` Brackets will allow us to provide substitutions  
    -  `b[hei]r` Will search for `bar`, `ber`, `bir` 
    - `b[^aei]r` Will search for everything except `bar`, `ber`, `bir` 
    - `b[a-e]r` Will search for every combination substituing with `bar` => `ber` 
    - we can use the same range for numbers as well
- `*` wildcard, everything matches
- `+` can previous letter can appear one or more times
    - `be+r` => `ber` and `beer`
- `?` represents an optional character, `an?` => `a`, `an`
- `{n}` a certain number of character occurances
    - `be{2}r` => `beer`
    - we can also add a comma to indicate 'at least' n. `be{2,}r` => `beer`, `beeer`
    - additionally we can have an occurance range with `be{1, 3}r`
    - `[0-9]{4}` => will find 4 digit number
- `()` grouping 
    - `(ha)-\1,(haa)-\2`
- `(?:)` Non-capturing Grouping
    - You can capture an expression and ensure that it is not captured by refrences
- `(x | y)` Pipe character
    - Allows us to specify that an expression can be different expressions
    - different than charset `[abc]` because it operates at a string level
    - `(c|r)at | dog` will find `cat`, `rat`, `dog`
- `\` the escape character allows us to denote a that we are not looking for a special symbol rather we are looking for the proceding one
    - `\.` will find an instance of `.`
    - `(\(\*\)` will find the string `(*)`
- `\w` to find word characters in the text
- `\W` to find every character that isnt a word character
- `\d` to find number characters
- `\D` to find non numeric characters
- `\s` to find space characters
- `\S` to find non space characters
- `(?=)` positive lookahead
    - Look ahead of selection and see if string occurs
    - `\d+(?=PM)` will look to see if after decimal has pm. 
    - `1 Aug 2PM` will return the 2 
    - Trails
- `(?!)` negative lookahead
    - Look behind the selection
    - `\d+(?!PM)` will look to see if after decimal has pm. 
    - `1 Aug 2PM` will return the 1 
    - Trails
- `(?<=)` Positive look behind
    - Put to check if occurs before char
    - `(?<=\$)\d+` for `$5` will return 5
    - Leads
- `(?<!)` Negative Look Behind
    - `(?<=\$)\d+` for `20 $5` will return 5
    - Leads
