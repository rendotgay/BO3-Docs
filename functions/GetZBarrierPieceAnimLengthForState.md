# GetZBarrierPieceAnimLengthForState

Returns the length in seconds for the animation associated with the supplied state for a piece, in seconds.

Example:
```c++
wait(ent GetZBarrierPieceAnimLengthForState(0, "opening", 0.9))
```


### Parameters
Parameter | Summary
| - | - |
*index | The index of the piece we care about.
*state | Name of state of interest - choices are 'open', 'closed', 'opening', 'closing'.
[scalar] | Scalar applied to animation length.

<sub>* = mandatory</sub>

