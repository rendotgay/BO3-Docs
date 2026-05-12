# setshaderconstant

Set the value of a previously-mapped shader constant

Example:
```c++
ent setshaderconstant( 0, "shaderColor" , 0, 0, 0, 0)
```


### Parameters
Parameter | Summary
| - | - |
*localClientNum | Local client for which to set the shader constant
*index | An 0-based index that refers to a previously-mapped shader constant(see MapShaderConstant)
*x | A float value, x component of the shader constant
*y | A float value, y component of the shader constant
*z | A float value, z component of the shader constant
*w | A float value, w component of the shader constant

<sub>* = mandatory</sub>

