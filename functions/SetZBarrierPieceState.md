# SetZBarrierPieceState

Set's the state of the piece indexed in the zbarrier ent. States are open, opening, closed and closing.

Example:
```c++
ent SetZBarrierPieceState(1, "open", 0.8)
```


### Parameters
Parameter | Summary
| - | - |
*piece number | The piece index.
*state | State to set - valid states are open, opening, closed and closing.
[animation scalar] | Valid range 0.1 - 2.0, changes the playback speed of the animation in the set state - numbers less than 1.0 are faster.

<sub>* = mandatory</sub>

