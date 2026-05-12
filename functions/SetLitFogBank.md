# SetLitFogBank

Sets which bank to use for all lit fog volumes with matching script id

Example:
```c++
SetLitFogBank( 0, 1, 5.0 )
```


### Parameters
Parameter | Summary
| - | - |
*localClientNum | The local client
*scriptid | Volume identifier set in Radiant. (0-255). -1 = all.
*bank | Bank selection (0-3).
*time | Time in seconds to make the transition over. -1 to use the 'fogtime' parameter set in the volume.

<sub>* = mandatory</sub>

