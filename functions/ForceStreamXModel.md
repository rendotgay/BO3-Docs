# ForceStreamXModel

Forces the streamer to load model and texture LODs for a model even if it isn't yet visible.  Returns true when all levels are loaded.  Call StopForceStreamingXModel when you no longer need it, or Steve will be upset that you're wasting Streamer memory.

Example:
```c++
areAllForcedLodsLoaded = CScr_ForceStreamXModel( model, meshLodsToNotForce, textureLodsToNotForce, alsoStreamLowerLods=true )
```

### Parameters
Parameter | Summary
| - | - |
*model | The model to force stream
[meshLodsToForce] | The mesh LODs to force ( Default is 0 )
[textureLodsToForce] | The texture LODs to force ( Default is 0 )

<sub>* = mandatory</sub>

