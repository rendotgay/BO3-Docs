# PhysicsTraceEx

Physics trace, ignoring characters. Returns the full trace structure.

Example:
```c++
trace = PhysicsTraceEx( start, end, (-10,-10,0), (10,10,0) )
```


**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*start | The start point
*end | The end point
[mins] | trace capsule min
[maxs] | trace capsule max
[entity] | entity to ignore
[player clip] | collide with the player solid mask instead of ai solid mask

<sub>* = mandatory</sub>

