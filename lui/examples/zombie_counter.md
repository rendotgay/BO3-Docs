# Zombie Counter

Here's how you can add a simple displays for zombies alive to your LUI.

### GSC
```c++
#using scripts\shared\ai\zombie_utility;

#precache( "lui_menu_data", "zm_alive_count" );

function __main__()
{
	level thread zombie_count_monitor();
}

function zombie_count_monitor()
{
    level endon( "game_ended" );

    while( true )
    {
        WAIT_SERVER_FRAME;

        zm_count = zombie_utility::get_current_zombie_count() + level.zombie_total;
        if( !isdefined( zm_count ) ) zm_count = 0;

        foreach( player in level.players )
        {
            if( isdefined( player ) )
                player SetControllerUIModelValue( "zm_alive_count", zm_count );
        }
    }
}
```

### LUA
```lua
Engine.CreateModel(controllerModel, "zm_alive_count")

Hud.ZombieCount = LUI.UIText.new(Hud, Instance)
Hud.ZombieCount:setLeftRight( false, false, 41, 49 )
Hud.ZombieCount:setTopBottom( true, false, 7, 25 )
Hud.ZombieCount:setText("0")
Hud.ZombieCount:setTTF("fonts/stratum2bold.ttf")
Hud.ZombieCount:setRGB(1, 1, 1)
Hud:addElement(Hud.ZombieCount)

Hud.ZombieCount:subscribeToModel(
  Engine.GetModel(controllerModel, "zm_alive_count"),
  function(ModelRef)
      local val = Engine.GetModelValue(ModelRef)
      Hud.ZombieCount:setText(val ~= nil and tostring(val) or "0")
  end
)
```
