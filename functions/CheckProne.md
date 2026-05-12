# CheckProne

Returns true when a character can go prone at the specified position. Specifically setup for use by AI characters.

Example:
```c++
canFitProne = self CheckProne( origin, yaw, alreadyProne )
```


### Parameters
Parameter | Summary
| - | - |
*position | (vector) The position of the prone character.
*yaw | (float) The world yaw in degrees.
*is prone | (bool) Flag if the character is already prone.

<sub>* = mandatory</sub>

