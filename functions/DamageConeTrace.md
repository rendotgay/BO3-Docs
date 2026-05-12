# DamageConeTrace

Determines how much the entity can be seen from the given position. Performs multiple traces and returns an approximation to how much of the entity is visible from the given point (between 0 and 1). In SinglePlayer this will always be 1 if the entity is partially visible.

Example:
```c++
turretDamageFraction = entity damageConeTrace( turret.origin + (0,0,40), turret )
```


### Parameters
Parameter | Summary
| - | - |
*damage position | The point the sight starts at
[ignore entity] | An entity to ignore when doing the traces
[damage angles] | The forward direction of the cone, whose base is at the <damage position>.  Must be normalized.
[cone angle] | Angle in degrees from the line of sight to the edge of the cone.  Defaults to 65.

<sub>* = mandatory</sub>

