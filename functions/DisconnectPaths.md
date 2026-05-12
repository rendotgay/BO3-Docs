# DisconnectPaths

Disconnects the paths that intersect with the entity. If the entity is a script_brushmodel then it must have DYNAMICPATH set to disconnect paths.

Example:
```c++
level.ArmoredCar DisconnectPaths()
```

### Parameters
Parameter | Summary
| - | - |
[detailLevel] | how detailed the cut part matches the entity. 0 or omitted: box, 1: convex hull fitting rough shape, 2: [SUPER EXPENSIVE] use collision shape directly
[moveAllowed] | sets whether the silhouette moves with the entity (defaults to true)

<sub>* = mandatory</sub>

