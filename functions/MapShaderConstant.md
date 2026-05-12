# MapShaderConstant

Maps a shader constant to an index. Returns 1 if success, 0 on failure

Example:
```c++
ent mapshaderconstant( 0, "shaderColor" ); ent mapshaderconstant( 0, "shaderColor", 1, 0, 1, 1 )
```


### Parameters
Parameter | Summary
| - | - |
*localClientNum | Local client for which to map the shader constant
*index | the index you want this shader constant to map to
*constant name | a string that's the name of the shader constant
[x] | initial value of x component
[y] | initial value of y component
[z] | initial value of z component
[w] | initial value of w component

<sub>* = mandatory</sub>

