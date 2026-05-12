# GetDamageableEntArray

Returns the entities that can be damaged. Can optionally take an origin, radius, and a flag to check 3D.

Example:
```c++
entities = GetDamageableEntArray( maxDist, true )
```


**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
[origin] | origin to check against
[radius] | max distance to origin
[checkZ] | if true then check distance in 3d

<sub>* = mandatory</sub>

