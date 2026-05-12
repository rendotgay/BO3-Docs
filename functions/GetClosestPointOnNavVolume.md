# GetClosestPointOnNavVolume

Get a point on nav volume that's closest to the given position within radius. Returns the adjusted position if found one, or undefined if not found.

Example:
```c++
posOnNavVolume = self GetClosestPointOnNavVolume( (10,20,30), 25 )
```

### Parameters
Parameter | Summary
| - | - |
*position | Position to start the search around.
[searchRadius] | Radius to search within. If not provided, a default value proximately equal to player size will be used.

<sub>* = mandatory</sub>

