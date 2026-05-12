# TracePassedOnNavMesh

Run a trace on NavMesh to see if a character can go straight from start to end.

Example:
```c++
posOnNavMesh = TracePassedOnNavMesh( (10,20,30), 25, 15 )
```


### Parameters
Parameter | Summary
| - | - |
*start | start of the trace
*end | end of the trace
[characterRadius] | the radius of the capsule used in trace. default to 0.
[materialFlags] | the flags marking whether a face type can be used

<sub>* = mandatory</sub>

