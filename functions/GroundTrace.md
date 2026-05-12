# GroundTrace

Allows script to do a point trace with MASK_SHOT + MASK_ITEM. Returns hit position, hit entity, hit surface normal.

Example:
```c++
trace = GroundTrace(magicBulletOrigin.origin, eyePos, true, undefined)
```

**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*start | The bullet start point
*end | The bullet end point
*hit characters | When set to true, this will trace for character hits
*ignore entity | An entity to ignore
[ignore water] | Optionally ignore water. (bool)
[ignore glass] | Optionally ignore glass. (bool)

<sub>* = mandatory</sub>

