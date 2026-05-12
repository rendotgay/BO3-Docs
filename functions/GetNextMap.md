# GetNextMap

Get the name of the next map in the maptable.  Returns "" if this is the last map, undefined if currentmap wasn't found

Example:
```c++
GetNextMap( "cp_mi_sing_blackstation" )
```


### Parameters
Parameter | Summary
| - | - |
[currentmap] | the name of the current map.  If ommitted, use Dvar sv_mapname
[dlcindex] | dlc1..N if DLC.  If ommitted, use "base".
[sessionmodeabbrev] | cp,mp,zm.  If ommitted, use current game mode abbreviation

<sub>* = mandatory</sub>

