# IsPointOnNavMesh

Checks if a given point is valid on the NavMesh. This check performs all the necessary validation such as away from boundary, correct material, navmesh trigger, etc.

Example:
```c++
isValid = IsPointOnNavMesh( (10,20,30), self )
```


### Parameters
Parameter | Summary
| - | - |
*position | Position to evaluate.
[entity / radius] the point is for this entity to path to, or an estimate radius of the expected character radius. default to radius 0. Note: not passing in the entity can cause false positive when point is on NavMesh but too close to boundary / on wrong material / in disabled navmesh trigger; or false negative when big character's origin is far below NavMesh but still within tolerant height. | 

<sub>* = mandatory</sub>

