# SetAnim

Restart": These functions cause the animation to restart. If they had been previously playing, without this they would continue from their current time.

Example:
```c++
self SetAnim( %precombatrun1, 1, 0.1, 1 )
```

### Parameters
Parameter | Summary
| - | - |
*animation | The animation or animtree node to change.
[weight] | Goal weight of this animation. Defaults to 1.0.
[time] | Time to transition to this weight in seconds. Defaults to 0.2.
[rate] | Playback rate of the animation. Defaults to 1.0.

<sub>* = mandatory</sub>

