# ForceStreamMaterial

Forces the streamer to load texture LODs for a material even if it isn't yet visible.  Returns true when all levels are loaded.  Call StopForceStreamingMaterial when you no longer need it, or Steve will be upset that you're wasting Streamer memory.

Example:
```c++
areAllForcedLodsLoaded = ForceStreamMaterial( material, mipsToNotForce )
```


### Parameters
Parameter | Summary
| - | - |
*material | Material to force stream
[textureLods] | Texture LODs to not force

<sub>* = mandatory</sub>

