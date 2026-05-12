# StrTok2

Tokenizes &lt;string&gt; by a single delimiter string.  doesn't treat the delimiter string as a series of characters, but as a string

Example:
```c++
my_string_array = StrTok2( "my_string foo; my_string_2", "foo; " )
```


### Parameters
Parameter | Summary
| - | - |
*string | The input string
*delim | The delimiter to tokenize by
case_sensitive | true if test is case sensitive

<sub>* = mandatory</sub>

