# SetJitterParams

Set the jitter parameters. Set everything to 0 to stop jittering. Vehicle ignores jitter parameters when on ground

Example:
```c++
self SetJitterParams( (0,0,20), 0.5, 1.5 ); // Jitter up or down randomly within 20 units, switching every 0.5 to 1.5 seconds
```

### Parameters
Parameter | Summary
| - | - |
*range vector | The jitter range vector.
[min period] | Minimum time in seconds to switch jitter direction. Default 0.5 sec
[max period] | Maximum time in seconds to switch jitter direction. Default 1.0 sec

<sub>* = mandatory</sub>

