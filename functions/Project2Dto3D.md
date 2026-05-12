# Project2Dto3D

returns a world coordinate that projects to the given 2d coordinate ((-1,1),(-1,1))

Example:
```c++
v=Project2DTo3D( 0, -1, -1, 5)
```

### Parameters
Parameter | Summary
| - | - |
*clientnum | clientnumber - needed for viewport selection.
*x | screen space x coord (-1,1)
*y | screen space y coord (-1,1)
*depth | depth to assume near clip is at (at this depth the screen will be edge to edge)

<sub>* = mandatory</sub>

