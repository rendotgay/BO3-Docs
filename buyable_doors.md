# Adding doors
## Models
1. Make model script_model
2. Set `targetname`
3. Add KVP(s)
4. `script_angles`: rotation to be set to
5. `script_vector`: offset position to be moved
## Clip
1. Add script_brushmodel
2. Set `targetname`
3. Add KVP `script_noteworthy` and set to `clip`
## Buy
1. Add `trigger_use`
2. Set `targetname` to `zombie_door`
3. Add KVPs:
	- `script_flag`: zone activation flag
	- `target`: targetname of models and clip
	- `zombie_cost`: point cost