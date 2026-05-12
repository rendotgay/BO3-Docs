# ButtonBitState

Return true if the button_bit(s) indicated are pressed (note:  there is no way to know exactly which buttons are pressed on the client, since everything is remapped into these bit values)

Example:
```c++
if ( self ButtonBitState( "BUTTON_BIT_ATTACK") ) ...
```


### Parameters
Parameter | Summary
| - | - |
*button | : name of button to check "BUTTON_BIT_ATTACK" for example, optionally can include as many button names as desired.  Returns true if all buttons indicated are true.

<sub>* = mandatory</sub>

