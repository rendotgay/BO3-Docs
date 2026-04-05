# Custom Zombie Traversals
## TL;DR
node_negotiation_begin
```kvp
animscript <animation>
previewanim1 <animation>
targetname auto1
target auto2
script_noteworthy custom_traversal
```
node_negotiation_end
```kvp
targetname auto2
target auto1
script_noteworthy custom_traversal
```
## Instructions
1. Place a `node_negotiation_begin` and rotate it to face the direction you want
2. Set `animscript` to an animation, which can be found in your Black Ops III directory `/xanim_export/ai/zombie`
3. Set a unique `targetname`
4. Set `target` to a unique targetname for the `node_negotiation_end`
5. Set `script_noteworthy` to `custom_traversal`
6. If you want to preview the animation, set `previewanim1` to the same animation as `animscript` and set `previewmdl1` to `c_generic_gray_fb`
7. Place a `node_negotiation_end` and rotate it to face the direction you want
8. Set `targetname` to the unique name set in the `node_negotiation_begin`
9. Set `target` to the `targetname` of the `node_negotiation_begin`
10. Set `script_noteworthy` to `custom_traversal`