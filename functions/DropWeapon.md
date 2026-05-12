# DropWeapon

Drop the actor's weapon

Example:
```c++
self DropWeapon(self.weapon, self.anim_gunHand, throwVel)
```


**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*weapon name | (string) The name of the weapon.
*hand | (string) The tag to throw the weapon from.
[velocity] | (vector) The initial velocity of the weapon.
[angular velocity] | (vector) The initial angular velocity of the weapon.
[scavenger] | (bool) If the weapon requires the player to have scavenger perk to pick up the weapon.

<sub>* = mandatory</sub>

