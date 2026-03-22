# Spare change
## Option 1: Adding spare change
1. Open your map `.gsc` file
2. Add the following near the top:
	```#using scripts\zm\_zm_perks;```
3. In the function `main()` add:
	```level zm_perks::spare_change();```
## Option 2: Custom spare change
1. Open your map `.gsc` file
2. Add the following near the top:
	```
	#using scripts\zm\_zm_score;
	```
3. In the function `main()` add:
	```c#
	level spare_change();
	```
4. Under the `main()` function, outside of any other functions, add the following, replacing `5000` with your choice of points:
	```c#
	function spare_change( str_trigger = "audio_bump_trigger", str_sound = "zmb_perks_bump_bottle" )
	{
		a_t_audio = GetEntArray( str_trigger, "targetname" );
		foreach( t_audio_bump in a_t_audio )
		{
			if ( t_audio_bump.script_sound === str_sound )
			{
				t_audio_bump thread check_for_change();
			}
		}
	}

	function check_for_change()
	{
		self endon( "death" );
		
		while( true )
		{
			self waittill( "trigger", player );

			if ( player GetStance() == "prone" )
			{
				player zm_score::add_to_player_score( 5000 );
				zm_utility::play_sound_at_pos( "purchase", player.origin );
				break;
			}

			wait 0.1;
		}
	}
	```