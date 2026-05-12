# GetClosestPointOnNavMesh

Get a point on NavMesh that's closest to the given position within radius. Returns the adjusted position if found one, or undefined if not found. If distFromBoundary is defined, the point found on NavMesh will then be moved again to get it away from boundary

Example:
```c++
posOnNavMesh = GetClosestPointOnNavMesh( (10,20,30), 25, 15 )
```


### Parameters
Parameter | Summary
| - | - |
*position | Position to start the search around.
[searchRadius] | Radius to search within. If not provided, a default value proximately equal to player size will be used.
[distFromBoundary] | Distance to keep away from NavMesh boundary. This distance can NOT be guaranteed. If not provided, it will be treated as 15 (AI default radius).
[materialFlags] | the flags marking whether a face type can be used

<sub>* = mandatory</sub>

