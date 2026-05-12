# PlayLoopedFX

Play an fx which is looped

Example:
```c++
PlayLoopedFX( level._effect[self.v["trailfx"]], self.v["trailfxdelay"], self.v["origin"], 0, self.v["forward"], self.v["up"] )
```

**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*fx name | Name of the fx. Fx has to be cached
*repeat | Time to repeat after
*position | Position to play the fx at
[cull distance] | The cull distance for the fx
[forward] | The forward vector of the fx
[up] | The up vector of the fx

<sub>* = mandatory</sub>

