# HidePart

Hide part of an entity.

Example:
```c++
self HidePart( "tag_weapon", "weapon_saw" )
```

### Parameters
Parameter | Summary
| - | - |
*tagname | The tag to hide. All surfaces with a vertex weighted to the tag will be hidden and have no bullet collision. (string)
[modelname] | The optional model name to help specify the part location. (string)
[bApplyToChildren] | Optional flag to specify if we should apply the operation to children bones as well. (boolean)

<sub>* = mandatory</sub>

