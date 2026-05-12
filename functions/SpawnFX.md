# SpawnFX

Spawn an FX

Example:
```c++
fx = SpawnFx( level._effect[player.light_playFX], monkey.origin + (0,0,-12),(1,0,0),(0,0,1) )
```

**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*fx name | Name of the fx. Fx has to be cached
*position | Position to play the fx at
[forward] | The forward vector of the fx
[up] | The up vector of the fx

<sub>* = mandatory</sub>

