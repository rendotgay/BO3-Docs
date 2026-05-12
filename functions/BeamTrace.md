# BeamTrace

Performs a bullet trace between two points and returns an array of information about the trace result.

Example:
```c++
a_trace = BeamTrace( org1, org2 )
```


**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*start_pos | (point) The start position for the trace.
*end_pos | (point) The end position for the trace.
*hit_characters | (bool) Tell the trace to hit characters or not.
*ignore_ent | (entity) Entity to ingore for trace.
[ignore_water] | (bool) Ignore water - defaults to false.
[ignore_glass] | (bool) Ignore glass - defaults to false.
[ignore_ent2] | (entity) Second entity to ingore for trace.

<sub>* = mandatory</sub>

