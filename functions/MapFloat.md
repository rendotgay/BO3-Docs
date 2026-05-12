# MapFloat

Returns a lerped value between &lt;from&gt; and &lt;to&gt; based on &lt;time&gt;. &lt;time&gt; is a value between &lt;timeMin&gt; and &lt;timeMax&gt;.

Example:
```c++
val = MapFloat( 1, 2, 0, 10, 1.5); // would return 5.0
```

### Parameters
Parameter | Summary
| - | - |
*timeMin | Floating point value, min time value
*timeMax | Floating point value, max time value
*from | Floating point value, start of the result range
*to | Floating point value, end of the result range
*time | Floating point value in the range from <timeMin> to <timeMax>

<sub>* = mandatory</sub>

