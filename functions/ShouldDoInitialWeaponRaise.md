# ShouldDoInitialWeaponRaise

Set weaponstate to force or prevent first raise animation the next time the player switches to it. Only works if the player currently has it

Example:
```c++
old_state = self ShouldDoInitialWeaponRaise( "ak47", false )
```

### Parameters
Parameter | Summary
| - | - |
*weapon | The weapon to set the first raise anim state for
*bool shouldDoRaise | Whether the weapon should do the initial raise

<sub>* = mandatory</sub>

