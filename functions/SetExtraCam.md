# SetExtraCam

Activates the extra cam and sets the given entity as cam reference.

Example:
```c++
cameraEnt SetExtraCam( 1, 640, 480 )
```

### Parameters
Parameter | Summary
| - | - |
*camera index | which extra cam references this entity. Valid values are 0 - 3
rendered width | Width of the extra cam rendered target. The width will be calculated from the height if width is negative (keeping the aspect ration at 16:9)
rendered height | Height of the extra cam rendered target. The height will be calculated from the width if height is negative (keeping the aspect ration at 16:9)

<sub>* = mandatory</sub>

