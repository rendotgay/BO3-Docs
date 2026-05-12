# finishMeleeHit

Notifies the clients of the melee hit or miss

Example:
```c++
self finishMeleeHit( eAttacker, sWeapon, vPoint, vDir, iBoneIndex, bHit )
```

### Parameters
Parameter | Summary
| - | - |
*Attacker | The entity that is attacking.
*Weapon | The weapon number of the weapon used to inflict the damage
*Origin | (vector) The origin of the damage
*Direction | (vector) The direction of the damage
*bone index | Which bone was the closest to the hit
*shieldHit | Was the hit delivered against a shield
*hit | Was the hit successful or a swipe
*fromBehind | Was the hit from behind the victim

<sub>* = mandatory</sub>

