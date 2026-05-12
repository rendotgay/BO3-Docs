# SetEntityTarget

Set an entity as the AI's target. This is for special cases only. Do not set AI or player targets with this.

Example:
```c++
self SetEntityTarget( vehicle_entity, 0.7, "tag_head" )
```

### Parameters
Parameter | Summary
| - | - |
*entity | An entity to target (cannot be server only entity).
[threat] | A fraction of maximum possible threat an AI can have. Must be in 0 to 1 range. Defaults to 1.
[tag name] | Tag to aim/shoot at on this entity. Defaults to tag_eye for actors/players".

<sub>* = mandatory</sub>

