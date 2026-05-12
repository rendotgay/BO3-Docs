# SetVisionSetForPlayer

Specify the server override visionset and the transition time into it.

Example:
```c++
player SetVisionSetForPlayer( "mortar_thermal", 1.5 )
```

### Parameters
Parameter | Summary
| - | - |
*visionset name | Vision set to transition into (string)
[transition time] | How long, in seconds, to take transitioning to the new vision set if a transition is possible. Default is one second. (float)

<sub>* = mandatory</sub>

