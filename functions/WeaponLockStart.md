# WeaponLockStart

Begins player's weapon lockon sequence (hud effects, etc).  Will clear any existing hard lock.  Use WeaponLockFinalize() to complete lock.

Example:
```c++
player WeaponLockStart( enemyGuy )
```

### Parameters
Parameter | Summary
| - | - |
*entity | : An entity.
[slot] | :  The slot to operate on (up to MAX_SIMULTANEOUS_LOCKONS)

<sub>* = mandatory</sub>

