# BoundsWouldTelefrag

Returns true if the passed in bounding box would telefrag a player if another player was spawned there.

Example:
```c++
if ( BoundsWouldTelefrag( vehicle GetAbsMins(), vehicle GetAbsmaxs() ) ) ...
```

### Parameters
Parameter | Summary
| - | - |
*mins | Mins of bounding box
*maxs | Maxs of bounding box

<sub>* = mandatory</sub>

