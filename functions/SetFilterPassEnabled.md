# SetFilterPassEnabled

Sets the filter pass enabled or disabled

Example:
```c++
SetFilterPassEnabled( self.localClientNum, 1, 12, false)
```


### Parameters
Parameter | Summary
| - | - |
*localClientNum | 
*filterIndex | Must be between 0 - 3
*passIndex | Must be between 0 - 16
*passEnable | true/false
[hdrFilter] true/false - if true the filter is applied to the scene (HDR) otherwise will be applied after the LDT and dof (default false) | 
[firstPersonOnly] true/false - if true the filter is applied to the scene only if you are in or spectating a player in first person | 

<sub>* = mandatory</sub>

