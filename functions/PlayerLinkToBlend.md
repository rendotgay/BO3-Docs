# PlayerLinkToBlend

Only works if the player is currently linked to another entity and angles aren't locked. Lerps the current view angle constraints to the provided ones over the specified time.

Example:
```c++
player PlayerLinkToBlend( ice_pick, "tag_origin
```

### Parameters
Parameter | Summary
| - | - |
*parent | The entity to attach the player to.
[tag] | The tag to attach the player to.
[pos time] | Lerp duration in seconds. Default is 1.
[pos accel time] | Acceleration time. Default is 0.
[pos decel time] | Decelaration time. Default is 0.
[angle time] | angle Lerp duration in seconds. Default is <time>.
[angle accel time] | angle Acceleration time. Default is 0.
[angle decel time] | angle Decelaration time. Default is 0.

<sub>* = mandatory</sub>

