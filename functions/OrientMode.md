# OrientMode

Set the orient mode of this actor.

Example:
```c++
randAlly OrientMode("face direction", player.origin-randAlly.origin )
```


### Parameters
Parameter | Summary
| - | - |
*orient mode | (const string) OrientMode must be 'face angle', 'face current', 'face direction', 'face enemy', 'face enemy or motion', 'face goal', 'face motion', 'face point', or 'face default'
[face angle] | (float) The yaw angle to face if orient mode is 'face angle'
[direction vector] | (vector) The direction vector to face if orient mode is 'face direction'
[face position] | (vector) The point to face if orient mode is 'face point'

<sub>* = mandatory</sub>

