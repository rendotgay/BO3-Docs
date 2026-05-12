# GetStartOrigin

Get the starting origin for an animation, in world coordinates, given its current position, and angles

Example:
```c++
org1 = GetStartOrigin( climborg, climbang, buddyanim1, [0.5] )
```

### Parameters
Parameter | Summary
| - | - |
*origin | The current origin of the animation in world coordinates
*angle | The current angle set of the animation in world coordinates
*animation | The currently running animation
[animation time] | The starting animation time in 0-1 range

<sub>* = mandatory</sub>

