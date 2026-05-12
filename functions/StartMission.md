# StartMission

Start the (server side) mission script for the specified mission - all loading (on all clients) should be completed before calling - use client side LoadMission to load missions

Example:
```c++
StartMission()
```

### Parameters
Parameter | Summary
| - | - |
*mission_index | index of the mission name to start - mission names can be retrieved by calling GetMissions to return the available mission array

<sub>* = mandatory</sub>

