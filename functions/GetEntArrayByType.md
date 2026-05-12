# GetEntArrayByType

Gets an array of entities that have the given the type of the entity ( for example, ET_MISSILE )

Example:
```c++
grenades = GetEntArray( 0, ET_MISSILE )
```


**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*localclientnum | Which local client's entity list to use.
*type | Type of the entity. Look into shared.gsh for the ET enum

<sub>* = mandatory</sub>

