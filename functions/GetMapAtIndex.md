# GetMapAtIndex

Get the name of the map at the given index in a mode's maptable.  Returns undefined if the given index doesn't index the given maptable

Example:
```c++
GetMapAtIndex( "cp_mi_sing_blackstation" )
```

### Parameters
Parameter | Summary
| - | - |
*index | the index of the map you're looking for.
dlcindex | dlc1..N if DLC.  If ommitted, use "base".
sessionmodeabbrev | cp,mp,zm.  If ommitted, use current game mode abbreviation

<sub>* = mandatory</sub>

