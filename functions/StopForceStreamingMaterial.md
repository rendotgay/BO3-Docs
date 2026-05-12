# StopForceStreamingMaterial

Forces the streamer to load the texture LODs for a material even if it isn't yet visible.  Returns true when all levels are loaded.  Call StopForceStreamingMaterial when you no longer need it, or Steve will be upset that you're wasting Streamer memory.

Example:
```c++
StopForceStreamingMaterial( material )
```


### Parameters
Parameter | Summary
| - | - |
*material | Material to stop force streaming

<sub>* = mandatory</sub>

