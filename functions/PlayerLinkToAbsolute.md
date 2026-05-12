# PlayerLinkToAbsolute

Attaches the player to an entity. No view movement is allowed.  The player's eye position will remain fixed relative to the parent entity/tag. Thus, pitching and rolling will cause the player's eye position to move. (But the player entity always remains vertical)

Example:
```c++
player PlayerLinkToAbsolute( vehicle, "tag_player" )
```

### Parameters
Parameter | Summary
| - | - |
*lockto entity | The entity to attach the player to
[tag] | The tag to attach the player to

<sub>* = mandatory</sub>

