# Kill

Kills this entity. If the entity could not be killed, errors. Automatically sets setCanDamage( true ).

Example:
```c++
level.player kill()
```


### Parameters
Parameter | Summary
| - | - |
[source position] | The position that the damage comes from. Defaults to entity's origin
[attacker] | The entity that dealt the damage (such as an AI or player)
[inflictor] | The entity that the damage came from (such as a grenade or turret)
[weapon] | weapon to do damage with

<sub>* = mandatory</sub>

