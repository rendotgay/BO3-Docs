# MagicBullet

Creates a magic bullet at the source

Example:
```c++
MagicBullet( GetWeapon("sniper_hyperion"), level.sniper_loc.origin, target GetTagOrigin( "tag_eye" ), level.sniper_boss)
```

**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*weapon | Weapon type of the bullet
*source | Where the bullet will be spawned
*destination | Where the bullet will be fired at
[attacker] | Set the owner of the bullet to this
[targetent] | The target of the bullet
[targetOffset] | Offset the target by this vector

<sub>* = mandatory</sub>

