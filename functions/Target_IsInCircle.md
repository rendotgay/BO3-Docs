# Target_IsInCircle

Returns whether a target is within a given radius from the center of the player's screen

Example:
```c++
player Target_IsInCircle( enemy_chopper, player, 65, 100 )
```


### Parameters
Parameter | Summary
| - | - |
*target entity | The entity that is the target
*player | The player entity
*fov | The player's field of view
*radius | radius of the circle, centered at the center of the screen
[zoffset] | if entity is not in target array, use optional zoffset for target pos

<sub>* = mandatory</sub>

