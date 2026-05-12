# WeaponLockFinalize

Locks player's weapon onto an entity.  Implies WeaponLockStart(), so this may be called to jump to a hard lock.

Example:
```c++
player WeaponLockFinalize( enemyGuy )
```

### Parameters
Parameter | Summary
| - | - |
*entity | : An entity.
[slot] | :  The slot to operate on (up to MAX_SIMULTANEOUS_LOCKONS)

<sub>* = mandatory</sub>

