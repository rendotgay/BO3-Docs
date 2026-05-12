# LerpViewAngleClamp

Only works if the player is currently linked to another entity and angles aren't locked. Lerps the current view angle constraints to the provided ones over the specified time.

Example:
```c++

```

### Parameters
Parameter | Summary
| - | - |
*time | Lerp duration in seconds. A value of 0 means instantaneous.
*accel time | Acceleration time.
*decel time | Decelaration time.
*right arc | Angle to clamp view to the right.
*left arc | Angle to clamp view to the left.
*top arc | Angle to clamp view to the top.
*bottom arc | Angle to clamp view to the bottom.

<sub>* = mandatory</sub>

