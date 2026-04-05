# Adding doors
## Option 1: Standard Doors
These doors can rotate or move at the set zombie_cost
### TLDR
script_model
```kvp
targetname <door>
script_angles 0 0 0
script_vector 0 0 0
```
script_brushmodel
```kvp
DYNAMICPATH ❎ True
targetname <door>
script_noteworthy clip
```
trigger_use
```kvp
targetname zombie_door
script_flag <zone flag>
target <door>
zombie_cost 1000
```
### Models
1. Make model `script_model`
2. Set `targetname`
3. Add KVP(s)
	- `script_angles`: rotation to be set to
	- `script_vector`: offset position to be moved
4. Optionally, you can add the following KVP's:
	- `script_firefx` - Effect to play on move
	- `script_fxid` - Effect to play on deletion of model
	- `script_noteworthy` - Set to jiggle if the model should "jiggle" before the move
	- `script_transition_time` - Time in seconds it takes the model to move
### Clip
1. Add `script_brushmodel`
2. Set `targetname`
3. Add KVP `script_noteworthy` and set to `clip`
### Buy
1. Add `trigger_use`
2. Set `targetname` to `zombie_door`
3. Add KVPs:
	- `script_flag`: zone activation flag
	- `target`: targetname of models and clip
	- `zombie_cost`: point cost
## Option 2: Scripted doors
These doors can rotate AND move at the set zombie_cost
### TLDR
script_model
```kvp
targetname <door>
script_angles 0 0 0
script_vector 0 0 0
```
script_brushmodel
```kvp
targetname <door>
script_noteworthy clip
```
trigger_use
```kvp
targetname custom_zombie_door
script_flag <zone flag>
target <door>
zombie_cost 1000
```
### Script
1. Open your map `.gsc` file
2. Add the following near the top:
	```c
	#using scripts\zm\_zm_score;
	```
3. In the function `main()` add:
	```c
	custom_doors = GetEntArray("custom_zombie_door", "targetname");
	foreach(trigger in custom_doors)
	{
	    trigger SetHintString("Hold ^3&&1 ^7to open Door [Cost: " + trigger.zombie_cost + "]");
	    trigger SetCursorHint("HINT_NOICON");
	    trigger thread door_trigger_wait();
	}
	```
4. Under the `main()` function, outside of any other functions, add the following:
	```c
	function door_trigger_wait()
	{
	    while(true)
	    {
	        self waittill("trigger", player);
	        player custom_zombie_door(self);
	    }
	}
	function custom_zombie_door(trigger)
	{
		if(!zm_score::can_player_purchase(trigger.zombie_cost))
		{
			zm_utility::play_sound_at_pos("no_purchase", self.origin);
			return;
		}

		zm_score::minus_to_player_score(trigger.zombie_cost);
		
		zm_utility::play_sound_at_pos("purchase", self.origin);
		models = GetEntArray(trigger.target, "targetname");
		if(IsDefined(trigger.script_flag))
		{
			level flag::set(trigger.script_flag);
		}
		trigger delete();

	    foreach(model in models)
	    {
	    	if(model.script_noteworthy == "clip")
	    	{
	    		model delete();
	    	} else 
	    	{
			    target_angles = model GetAngles();
	            if(IsDefined(model.script_angles))
	            {
	                target_angles = model.script_angles;
	            }

	            if(IsDefined(model.script_vector))
	            {
	                target_offset = model.script_vector;
	                target_origin = model GetOrigin();
			    	target_position = (target_origin[0] + target_offset[0], 
	                   target_origin[1] + target_offset[1], 
	                   target_origin[2] + target_offset[2]);
	            } else
	            {
	            	target_position = model GetOrigin();
	            }
			    
			    transition_time = 1.5;
	            if(IsDefined(model.script_transition_time))
	            {
	                transition_time = model.script_transition_time;
	            }

			    model MoveTo(target_position, transition_time, 0.5, 0.5);
			    model RotateTo(target_angles, transition_time, 0.5, 0.5);
	    	}
	    }
	}
	```
### Models
1. Make model script_model
2. Set `targetname`
3. Add KVP(s)
	- `script_angles`: rotation to be set to
	- `script_vector`: offset position to be moved
4. Optionally, you can add the following KVP's:
	- `script_transition_time` - Time in seconds it takes the model to move
### Clip
1. Add script_brushmodel
2. Set `targetname`
3. Add KVP `script_noteworthy` and set to `clip`
### Buy
1. Add `trigger_use`
2. Set `targetname` to `custom_zombie_door`
3. Add KVPs:
	- `script_flag`: zone activation flag
	- `target`: targetname of models and clip
	- `zombie_cost`: point cost