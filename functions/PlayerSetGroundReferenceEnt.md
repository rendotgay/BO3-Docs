# PlayerSetGroundReferenceEnt

The ground entity's rotation will be added onto the player's view.  In particular, this will cause the player's yaw to rotate around the entity's z-axis instead of the world z-axis.  You only need to call this function once.  After that, any rotation that the reference entity undergoes will affect the player.  Call this command again with undefined to turn it off.

Example:
```c++
player PlayerSetGroundReferenceEnt( seaEnt )
```


### Parameters
Parameter | Summary
| - | - |
*ground reference entity | The entity used to rotate the player's view.

<sub>* = mandatory</sub>

