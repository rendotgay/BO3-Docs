# BulletTracePassed

Allows script to do a bullet point trace with ( MASK_SHOT & ~CONTENTS_SKY ) returns true if the trace does not hit anything

Example:
```c++
passed = BulletTracePassed( grenade.origin, self.origin + (0,0,TROPHY_TRACE_Z), false, self )
```


### Parameters
Parameter | Summary
| - | - |
*start | The bullet start point
*end | The bullet end point
*hit characters | An entity to ignore
*ignore entity | An entity to ignore
[ignore entity 2] | An entity to ignore
[fx vis] | check against fx visibility also
[ignore water] | mask contents_water

<sub>* = mandatory</sub>

