# VectorLerp

Linear interpolates between two vectors.

Example:
```c++
color = VectorLerp(oldColor, newColor, timeElapsed / timeTotal)
```


### Parameters
Parameter | Summary
| - | - |
*from | The vector whose value is used when fraction is 0
*to | The vector whose value is used when fraction is 1
*fraction | The fraction of the way between vectors.  Values less than 0 or greater than 1 do linear extrapolation.

<sub>* = mandatory</sub>

