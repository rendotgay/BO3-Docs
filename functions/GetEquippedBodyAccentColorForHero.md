# GetEquippedBodyAccentColorForHero

Returns an array of the equipped body accent colors of a specific hero

Example:
```c++
colorArray = GetEquippedBodyAccentColorForHero( localClientNum, 0 )
```

### Parameters
Parameter | Summary
| - | - |
*localClientNum | The localClientNum of the player in question
*sessionMode | The character's session mode
*heroIndex | The index of the hero in the current game-mode's character table or in case of lobby client, his queue position
*bodyIndex | The index of the body
*colorIndex | The index of the accent color
[getForLobbyClient] | If this is set then we are supposed to retrieve for lobby client

<sub>* = mandatory</sub>

