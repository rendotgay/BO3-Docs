# PlayerLinkTo

Attaches the player to an entity. Any entity rotation is added to the player's view, allow the player to look around. Rotating the parent entity/tag will not move the player's eye position, but only the player's view angles. Thus, the player's eye position is locked in place, always directly above the parent tag.

Example:
```c++
level.player PlayerLinkTo( vehicle, "tag_player", 0.5 )
```


### Parameters
Parameter | Summary
| - | - |
*linkto entity | The entity to attach the player to.
[tag] | The tag to attach the player to.
[view fraction] | How much the change in the tag's rotation effects the players view. Defaults to 0.
[right arc] | Angle to clamp view to the right. Defaults to 180.
[left arc] | Angle to clamp view to the left. Defaults to 180.
[top arc] | Angle to clamp view to the top. Defaults to 180.
[bottom arc] | Angle to clamp view to the bottom. Defaults to 180.
[use tag angles] | Determines how the player's view will be tilted. 'False' (default) means that the orientation of the tag when the player is linked will appear flat to the player. Any rotation from that orientation will tilt the player's view. 'True' means that only a tag angles of (0,0,0) will appear flat to the player. Any rotation from (0,0,0) will tilt the player's view.
[auto recenter] | Players view will auto recenter to the tag he is linked to. use tag angles must be true.

<sub>* = mandatory</sub>

