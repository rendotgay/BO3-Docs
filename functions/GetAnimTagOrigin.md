# GetAnimTagOrigin

Returns the local tag position within the animation at the specified normalized time, has no consideration to bone hierarchy.

Example:
```c++
tagPosition = GetAnimTagOrigin( arrivalAnim, 0, "tag_sync" )
```


### Parameters
Parameter | Summary
| - | - |
*animation name | Name of the animation.
*normalized time | 0.0 to 1.0 time within the animation.
*tag name | Name of the tag to look up within the animation.

<sub>* = mandatory</sub>

