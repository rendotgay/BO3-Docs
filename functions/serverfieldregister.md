# serverfieldregister

Register a server field. Server fields are variable bit length fields communicated from client to server

Example:
```c++
RegisterServerField("my_field", 2, "int"); // registers an int field with 2 bits of resolution, that can hold the values 0,1,2,3.
```

### Parameters
Parameter | Summary
| - | - |
*name | Unique name to identify the field.
*num bits | How many bits to use for the field. Valid values are in the range of 1-32. Only ask for as many as you need.
*type | Type of the field. Currently supported types "int" or "float"
*callback | Function that gets called when the value changes (each client can toggle this bit independently of the others)

<sub>* = mandatory</sub>

