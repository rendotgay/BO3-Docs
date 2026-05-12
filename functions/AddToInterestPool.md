# AddToInterestPool

Add a script event to the sentient's interest pool.

Example:
```c++
point = self AddToInterestPool( 500, 10, 5, ai.origin, ai )
```


### Parameters
Parameter | Summary
| - | - |
*value | Amount the event adds to the pool. (integer)
*priority | How important is the event. (integer)
*lifespan | Time the event stays in the pool. (float)
*point of interest | Position the AI will investigate. (vector3)
*originator | Entity that caused the event.
[unique] | Only one of this type can exist in the pool. (integer)

<sub>* = mandatory</sub>

