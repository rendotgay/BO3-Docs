# SetFilterPassCodeTexture

Sets a code texture for a filter pass - the tetxure has be to created beforehand

Example:
```c++
SetFilterPassMaterial( self.localClientNum, 1, 12, 0, "myBundle")
```

### Parameters
Parameter | Summary
| - | - |
*localClientNum | 
*filterIndex | Must be between 0 - 3
*passIndex | Must be between 0 - 15
*texture Index | Must be between 0 - 1
*texture name | has to have been created by captureFrame() before - if empty string sets to null.

<sub>* = mandatory</sub>

