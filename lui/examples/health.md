# Health UI Example

Here's a simple showcase of how to add a health display. This is my example from my CSGO HUD remake, which features accurate health text as well as a health bar.

### GSC
```c++
#precache( "lui_menu_data", "csgo_health" );
#precache( "lui_menu_data", "csgo_damage_flash" );

function __main__()
{
    callback::on_spawned( &on_player_spawned );
}

function on_player_spawned()
{
    self thread health_monitor();
}

function health_monitor()
{
    self endon( "bled_out" );
    self endon( "disconnect" );
    self endon( "spawned_player" );

    self.last_health = -1; // Store the health at last check

    while( true )
    {
        WAIT_SERVER_FRAME; // Only update when the server does

        if( isdefined( self ) )
        {
        	current_health = self.health;
            health = "" + current_health; // Set health to string

            if( current_health != self.last_health ) // Check if update is needed
            {
            	if( current_health < self.last_health ) // If took damage, flash healthbar red
		        {
		            self SetControllerUIModelValue( "csgo_damage_flash", 1 );
		            self thread reset_damage_flash();
		        }
                self SetControllerUIModelValue( "csgo_health", health ); // Update health
            }
        }
        self.last_health = current_health; // Update stored health for next check
    }
}

function reset_damage_flash()
{
    self endon( "bled_out" );
    self endon( "disconnect" );
    self endon( "spawned_player" );

    wait( 1.0 );
    self SetControllerUIModelValue( "csgo_damage_flash", 0 );
}
```

### CSC
```c++
function __main__()
{
    callback::on_localplayer_spawned( &on_localplayer_spawned );
}

function on_localplayer_spawned( localClientNum )
{
    self thread set_health_model( localClientNum );
}

function set_health_model( localClientNum )
{
    self endon( "entityshutdown" );
    self endon( "disconnect" );
    self notify( "set_health_bar" );
    self endon( "set_health_bar" );

    // Only need the ratio model for the bar fill
    controllerModel = GetUIModelForController( localClientNum );
    healthModel = CreateUIModel( controllerModel, "CSGO.healthBar" );

    while( true )
    {
        WAIT_CLIENT_FRAME;

        health = renderhealthoverlayhealth( localClientNum ); // get health as 0 to 1 value

        if( IS_EQUAL( GetUIModelValue( healthModel ), health ) ) // check if needs update
            continue;

        SetUIModelValue( healthModel, health );
    }
}
```

### LUA
```lua
Engine.CreateModel( Engine.GetModelForController( Instance ), "csgo_health" ) -- get health model

Hud.Health = LUI.UIText.new(Hud, Instance)
Hud.Health:setLeftRight(true, false, 58, 115)
Hud.Health:setTopBottom(false, true, -42, -14)
Hud.Health:setText("100")
Hud.Health:setTTF("fonts/stratum2bold.ttf")
Hud.Health:setRGB(1, 1, 1)
Hud:addElement(Hud.Health)

Hud.Health:subscribeToModel(
  Engine.GetModel(Engine.GetModelForController(Instance), "csgo_health"), -- sync element to model
  function(ModelRef)
      local val = Engine.GetModelValue(ModelRef)
      if val then
          if val == "0" or val == 0 then
              Hud.Health:setText("")
          else
              Hud.Health:setText(val) -- update health text
          end
      end
  end
)

Engine.CreateModel( Engine.GetModelForController( Instance ), "csgo_damage_flash" ) -- get damage flash model

Hud.HealthBarBG = LUI.UIImage.new(Hud, Instance)
Hud.HealthBarBG:setLeftRight(true, false, 123, 205)
Hud.HealthBarBG:setTopBottom(false, true, -31, -19)
Hud.HealthBarBG:setRGB(0.345, 0.345, 0.345)
Hud:addElement(Hud.HealthBarBG)

Hud.HealthBarFill = LUI.UIImage.new(Hud, Instance)
Hud.HealthBarFill:setLeftRight(true, false, 124, 204)
Hud.HealthBarFill:setTopBottom(false, true, -30, -20)
Hud.HealthBarFill:setRGB(1, 1, 1)
Hud:addElement(Hud.HealthBarFill)

Hud.HealthBarFill:subscribeToModel(
  Engine.GetModel(Engine.GetModelForController(Instance), "CSGO.healthBar"), 
  function(ModelRef)
      local val = Engine.GetModelValue(ModelRef)
      if val then
          local frac = math.max(0, math.min(1, val))
          local leftX = 124
          local barWidth = 80
          Hud.HealthBarFill:setLeftRight(true, false, leftX, leftX + (barWidth * frac))
      end
  end
)

Hud.HealthBarFill:subscribeToModel(
  Engine.GetModel(Engine.GetModelForController(Instance), "csgo_damage_flash"),
  function(ModelRef)
      local flash = Engine.GetModelValue(ModelRef)
      if flash and flash == 1 then
          Hud.HealthBarFill:setRGB(1, 0, 0)        -- red
      else
          Hud.HealthBarFill:setRGB(1, 1, 1)        -- back to white
      end
  end
)
```