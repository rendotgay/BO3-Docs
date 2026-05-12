# MoveSlide

Launches the entity in the given velocity. When on the ground it will slide smoothly. Call StopMoveSlide to make it stop moving.

Example:
```c++
self MoveSlide( 16, anglesToForward( self.angles ) * 10 )
```


### Parameters
Parameter | Summary
| - | - |
*center | The center of the entity's collision with the ground
*radius | The radius of the entity's collision with the ground
*initial velocity | The initial velocity to move the entity at

<sub>* = mandatory</sub>

