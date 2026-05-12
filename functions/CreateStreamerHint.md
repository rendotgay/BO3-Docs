# CreateStreamerHint

Allows scripter to create a streamer hint entity viewpoint to the player's viewpoint.

Example:
```c++
streamHintEnt = createStreamerHint( level.player.origin, 0.333 )
```


**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*origin | Location at which to spawn the streamer hint.
*factor | The relative importance of this entity's viewpoint to the main viewpoint.
[lightingState] | The lighting state to stream

<sub>* = mandatory</sub>

