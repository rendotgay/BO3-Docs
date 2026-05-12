# GetShootAtPos

Gets the position an attacker would shoot at to hit this entity.For AI or player this is the eye position.For other entities it's the tag_eye if there is one else the center of the entity bounding box.

Example:
```c++
targetPos = self.enemy GetShootAtPos(self)
```


### Parameters
Parameter | Summary
| - | - |
[attacker] | The entity that will be shooting

<sub>* = mandatory</sub>

