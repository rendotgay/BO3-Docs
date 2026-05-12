# PhysicsTrace

Does a physics trace from start to end. Returns hit position

Example:
```c++
trace = PhysicsTrace( start, end, ( 0, 0, 0 ), ( 0, 0, 0 ), self, PHYSICS_TRACE_MASK_VEHICLE_CLIP )
```


**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*start | starting position
*end | ending position
[mins] | minimum bounds
[maxs] | maximum bounds
[ignore entity] | the entity to not consider
[mask type] | the trace modifier

<sub>* = mandatory</sub>

