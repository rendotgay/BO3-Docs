# GetNotetracksInDelta

Get a list of notetracks and times within a specific time delta of a specific time in an animation

Example:
```c++
notetrackArray = GetNotetracksInDelta( anim, 0.4 )
```

### Parameters
Parameter | Summary
| - | - |
*animation | the animation for which notetrack information is needed
*time | The time in the animation around which notetrack information is needed in the range 0-1
[time_delta] | The amount of time around the time provided to check for notetracks in seconds defaults to 0.15

<sub>* = mandatory</sub>

