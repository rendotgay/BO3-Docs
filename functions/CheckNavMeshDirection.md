# CheckNavMeshDirection

Run a trace on NavMesh to get the furthest position a character can move in that direction

Example:
```c++
pos = CheckNavMeshDirection( (10,20,30), ( 1, 1, 0 ), 25 )
```


### Parameters
Parameter | Summary
| - | - |
*start | start of the trace
*dir | direction to trace
*dist | distance to trace
[characterRadius] | the radius of the capsule used in trace. default to 0.
[materialFlags] | the flags marking whether a face type can be used

<sub>* = mandatory</sub>

