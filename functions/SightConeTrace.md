# SightConeTrace

Determines how much the entity can be seen from the given position, using the same check that is used by grenades. Performs multiple sight traces and returns an approximation to how much of the entity is visible from the given point (between 0 and 1). In SinglePlayer this will always be 1 if the entity is partially visible.

Example:
```c++
tankVisibilityFraction = tank SightConeTrace( player.origin, player, player.angles, 65)
```

### Parameters
Parameter | Summary
| - | - |
*sight position | The point the sight starts at
[ignore entity] | An entity to ignore when doing the traces
[cone forward] | The forward direction of the cone, whose base is at the <sight position>.  Must be normalized.
[cone angle] | Angle in degrees from the line of sight to the edge of the cone.  Defaults to 65.

<sub>* = mandatory</sub>

