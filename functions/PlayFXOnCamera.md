# PlayFXOnCamera

Plays the fx at the given offset from the camera.

Example:
```c++
PlayFX( level._effect["bubbles"], offset, forward, up )
```

**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*fx name | Name of the fx. Fx has to be cached
[offset] | Offset from camera to play fx
[forward] | The forward vector of the fx
[up] | The up vector of the fx
[ignore pause] | True if the fx should play even when the game is paused.

<sub>* = mandatory</sub>

