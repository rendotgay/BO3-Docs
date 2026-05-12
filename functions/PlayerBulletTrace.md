# PlayerBulletTrace

Allows script to do a bullet point trace with CONTENTS_PLAYER, collides with player hitboxes. Returns hit position, hit entity, hit surface normal.

Example:
```c++
trace = PlayerBulletTrace( magicBulletOrigin.origin, eyePos, undefined )
```


**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*start | The bullet start point
*end | The bullet end point
*ignore entity | An entity to ignore

<sub>* = mandatory</sub>

