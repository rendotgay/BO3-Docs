# SetLightFovRange

Sets the current fov range of the light.

Example:
```c++
self SetLightFovRange( 200, 50 )
```


### Parameters
Parameter | Summary
| - | - |
*fov_outer | A new value for the outer FOV of the light, in degrees. This cannot be larger than the fov when the map was compiled, or less than 1. (float)
[fov_inner] | A new value for the inner FOV of the light, in degrees. This cannot be larger than fov_outer, or less than 0. If not specified, the map value is used. (float)

<sub>* = mandatory</sub>

