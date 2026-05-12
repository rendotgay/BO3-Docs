# Objective_Add

Add a new objective, with ability to specify all the info for the objective

Example:
```c++
Objective_Add( objective_number, "active", closest.bomb.origin, objective_text, self.objective )
```


### Parameters
Parameter | Summary
| - | - |
*objective_number | The number of the objective to add
*state | A string value representing the state of the objective. Valid states are "empty", "active", "invisible", "done", "current" and "failed"
[position/onEntity] The position of the objective - or - entity entity to be tracked. | 
[displayName] | The text to use for the objective. This should be a valid localized text reference
[entity] | The owner entity

<sub>* = mandatory</sub>

