# SetAnimForceNew

Debug only functionality that adds a new instance of an animation to an animtree setting its time to a specific point.

Example:
```c++
self SetAnimForceNew( %precombatrun1, 1, 0.1, 1 )
```

### Parameters
Parameter | Summary
| - | - |
*animation | The animation or animtree node to change.
[weight] | Goal weight of this animation. Defaults to 1.0.
[time] | Time to set this animation to after adding it. Defaults to 0.
[goalTime] | Time to transition to this weight in seconds. Defaults to 0.2.
[rate] | Playback rate of the animation. Defaults to 1.0.

<sub>* = mandatory</sub>

