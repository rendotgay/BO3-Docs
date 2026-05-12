# SetSModelSAnimShot

Set the anim shot to play on a static model

Example:
```c++
SetSModelSAnimShot("tiny_bot_blend", "", -1, true, false, true, 5*30)
```

### Parameters
Parameter | Summary
| - | - |
*target name | target name of the static model or <int index> The index of the static model or <array int indices> The indices of the static models (string)
[shot name] | shot name of the sub animation to play, pass in <int> 0 to play the first one. (string)
[time] | frame to start playing on, pass in -1 to use the static model random frame, this is the default. (float)
[loop] | this is unused, looping is set in the asset editor. (integer)
[append] | If !0 the animation will be played after the current animation(s), any loop flags in current animations are ignored. If 0, it will replace the current and any appended animation with the current one.(integer)
[blend] | If !0 new animation will blend into the new one. default is 0 (integer)
[frames to blend] | If number of frames to blend over (float)

<sub>* = mandatory</sub>

