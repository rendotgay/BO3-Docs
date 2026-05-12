# PlayerLinkWeaponViewToDelta

Similar to PlayerLinkToDelta(), but the player's body stays behind. The player's view attaches to the tag, and any weapon fire will also come from there.

Example:
```c++
level.player PlayerLinkToDelta( vehicle, "tag_player", 0.5 )
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

<sub>* = mandatory</sub>

