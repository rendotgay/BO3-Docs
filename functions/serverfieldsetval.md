# serverfieldsetval

Register a server field.  server fields are variable bit length fields communicated from client to server

Example:
```c++
RegisterServerField("my_field", VERSION_SHIP, 2, "int", ::my_cb_func); // registers a world int field with 2 bits of resolution, that can hold the values 0,1,2,3.
```

### Parameters
Parameter | Summary
| - | - |
*player | the player to operate on
*name | Unique name to identify the field.
*value | the value of the field

<sub>* = mandatory</sub>

