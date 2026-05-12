# SetViewAngleResistance

Sets the zones in the player's view cone in which resistance will be applied in the direction of the view limit

Example:
```c++
level.player SetViewAngleResistance( 40, 40, 20, 0, 0 )
```

### Parameters
Parameter | Summary
| - | - |
*right arc | Angle to resist against the right plane of the view cone.
*left arc | Angle to resist against the left plane of the view cone.
*top arc | Angle to resist against the top plane of the view cone.
*bottom arc | Angle to resist against the bottom plane of the view cone.
[snap to] | false when the resistance will be blended to over time. True by default.

<sub>* = mandatory</sub>

