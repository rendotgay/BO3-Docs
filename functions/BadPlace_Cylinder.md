# BadPlace_Cylinder

Creates a bad place cylinder. AI will flee this position if they can, and will not go into it if they can avoid it.

Example:
```c++
BadPlace_Cylinder( "moody", -1, level.moodyfall_mn, level.moodyfall_radius, "neutral" )
```

### Parameters
Parameter | Summary
| - | - |
*name | The name of the bad place. If name is not "", the bad place can be moved or deleted by using the unique name.
*duration | If duration > 0, the bad place will automatically delete itself after this time. If duration <= 0, the bad place must have a name and will last until manually deleted.
*origin | The origin of the cylinder.
*radius | The radius of the cylinder.
*height | The height of the cylinder.
*team | You must specify at least one team for which this place is bad, but can give several.  The allowed teams are 'axis', 'allies', and 'neutral'.

<sub>* = mandatory</sub>

