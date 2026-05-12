# ClientSysSetState

Sets the state of a pre registered client system for all clients.  The state will be communicated to the client script system.

Example:
```c++
ClientSysSetState(level._ClientSys["FakeFire"], "Event1Phase1")
```

### Parameters
Parameter | Summary
| - | - |
*id | The integer id of the client system.  Returned from call to ClientSysRegister.
*state | Arbitrary string state.  Will be sent to the client script system.

<sub>* = mandatory</sub>

