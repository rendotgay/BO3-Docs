# RegisterClientField

Register a client field. Client fields are variable bit length fields communicated from server to client.

Example:
```c++
RegisterClientField("world", "my_field", 2, "int"); // registers a world int field with 2 bits of resolution, that can hold the values 0,1,2,3.
```


### Parameters
Parameter | Summary
| - | - |
*Client field pool name | Which pool the field is allocated from. Currently supported : "world", "actor", "vehicle", "scriptmover"
*name | Unique name to identify the field.
*version | Number indicating version this field was added in - see _version.gsh for defines.
*num bits | How many bits to use for the field. Valid values are in the range of 1-32. Only ask for as many as you need.
*type | Type of the field. Currently supported types "int" or "float"

<sub>* = mandatory</sub>

