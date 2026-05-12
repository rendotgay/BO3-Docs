# ForceTeleport

Force Teleport the actor to a new position with the given origin and angles, regardless of wether it will be visible to the player or not.

Example:
```c++
self ForceTeleport( org, angles )
```


### Parameters
Parameter | Summary
| - | - |
*position | (point) The actor's new position.
[angles] | (vector) The actor's new angles.
[updategoalpos] | (bool) Update the script goal position to the teleport location. True by default.
[resetEntity] | (bool) Reset the entity behaviors.

<sub>* = mandatory</sub>

