# Creating A Custom HUD

Black Ops III UI is created via LUA code. This is a basic breakdown to get you started on creating a custom HUD

## Creating your LUA file
1. Start by create a file with the `.lua` extension in your map's `ui\uieditor\menus\hud`.
2. Then, in your map's `.csc` file, in the `main()` function, add:
```c++
LuiLoad( "ui.uieditor.menus.hud.hud_zm_mapname" );
```
replacing `hud_zm_mapname` with the name of your `.lua` file

## LUA Requirements
<sub>If you really do not care about learning how this works and just want to get to making your HUD, you can copy the script at the end of this section and move on</sub>

The base format of the HUD looks like so:
```lua
function LUI.createMenu.T7Hud_zm_factory(Instance)
      local Hud = CoD.Menu.NewForUIEditor("T7Hud_zm_factory")

      return Hud
end
```

Next, we set up the HUD itself by centering it and setting the sound profile
```lua
function LUI.createMenu.T7Hud_zm_factory(Instance)
      local Hud = CoD.Menu.NewForUIEditor("T7Hud_zm_factory")

      -- Set the current sound profile
      Hud.soundSet = "HUD"
      -- Set the owner of our hud to the root 'instance'
      Hud:setOwner(Instance)
      -- Set the anchors (Left: True, Right: True, LeftMargin: 0, RightMargin: 0)
      Hud:setLeftRight(true, true, 0, 0)
      -- Set the anchors (Top: True, Bottom: True, TopMargin: 0, BottomMargin: 0)
      Hud:setTopBottom(true, true, 0, 0)
      -- Play the opening sound (From 'HUD' profile)
      Hud:playSound("menu_open", Instance)

      return Hud
end
```

Now we can add our first element
```lua
function LUI.createMenu.T7Hud_zm_factory(Instance)
      local Hud = CoD.Menu.NewForUIEditor("T7Hud_zm_factory")

      -- Set the current sound profile
      Hud.soundSet = "HUD"
      -- Set the owner of our hud to the root 'instance'
      Hud:setOwner(Instance)
      -- Set the anchors (Left: True, Right: True, LeftMargin: 0, RightMargin: 0)
      Hud:setLeftRight(true, true, 0, 0)
      -- Set the anchors (Top: True, Bottom: True, TopMargin: 0, BottomMargin: 0)
      Hud:setTopBottom(true, true, 0, 0)
      -- Play the opening sound (From 'HUD' profile)
      Hud:playSound("menu_open", Instance)

      -- Make a new text element
      Hud.TestText = LUI.UIText.new(Hud, Instance)

      -- Set properties
      Hud.TestText:setLeftRight(true, false, 20, 250)
      Hud.TestText:setTopBottom(true, false, 20, 50)
      Hud.TestText:setText("Hello World!")

      Hud:addElement(Hud.TestText)  -- Add the control to the hud

      return Hud
end
```
In this example TestText is the name of our element, which is a `UIText` element.

Lastly, it's important to clean up the HUD on close
```lua
function LUI.createMenu.T7Hud_zm_factory(Instance)
      local Hud = CoD.Menu.NewForUIEditor("T7Hud_zm_factory")

      -- Set the current sound profile
      Hud.soundSet = "HUD"
      -- Set the owner of our hud to the root 'instance'
      Hud:setOwner(Instance)
      -- Set the anchors (Left: True, Right: True, LeftMargin: 0, RightMargin: 0)
      Hud:setLeftRight(true, true, 0, 0)
      -- Set the anchors (Top: True, Bottom: True, TopMargin: 0, BottomMargin: 0)
      Hud:setTopBottom(true, true, 0, 0)
      -- Play the opening sound (From 'HUD' profile)
      Hud:playSound("menu_open", Instance)

      -- Make a new text element
      Hud.TestText = LUI.UIText.new(Hud, Instance)

      -- Set properties
      Hud.TestText:setLeftRight(true, false, 20, 250)
      Hud.TestText:setTopBottom(true, false, 20, 50)
      Hud.TestText:setText("Hello World!")

      Hud:addElement(Hud.TestText)  -- Add the control to the hud

      -- Callback for the hud closing
      local function OnHudClose(Sender)
          Sender.TestText:close()  -- Close the element
      end

      -- Register the callback
      LUI.OverrideFunction_CallOriginalSecond(Hud, "close", OnHudClose)

      return Hud
end
```

## Element Types
This is a list of all the stock elements you can add
Element | Summary
| - | - |
UIElement | Root UI element, can house child elements, good base for creating new elements
UIText | Display text
UIImage | Displays a 2D image or background color
UIStreamedImage | Displays an image streamed in, shows Treyarch Spinner while waiting
UIVerticalList | Vertical list of child elements
UIHorizontalList | Horizontal list of child elements
UIList | Vertical list but provides a scrollbar
UIButton | Clickable element, with hover, leave, click, mousedown, and mouseup

## Customizing Elements
Here are some common modifiers you can apply to elements
Modifier | Type | Summary
setLeftRight() | bool, bool, float, float | Sets centering and offset, center left, center right, left offset, right offset
setTopBottom() | bool, bool, float, float | Sets centering and offset, center top, center bottom, top offset, right bottom
setRGB() | float, float, float | Sets color (0 to 1)
setAlpha() | float | Sets transparency (0 to 1)
setScale() | float | Sets size (default: 1)
setText() | string | Sets text for UIText
setTTF() | string | Set font ttf file, must be added to `.zone`

## Hooking Elements
Here is an example of how to hook your elements into stock zombies values to update with the game. This is a basic UIText that displays the current round number
```lua
Hud.RoundCount = LUI.UIText.new(Hud, Instance)
Hud.RoundCount:setLeftRight(false, false, -31, 31)
Hud.RoundCount:setTopBottom(true, false, 35, 51)
Hud.RoundCount:setTTF("fonts/stratum2bold.ttf")
Hud.RoundCount:setRGB(1, 1, 1)
Hud:addElement(Hud.RoundCount)

Hud.RoundCount:subscribeToModel(
  Engine.GetModel(Engine.GetModelForController(Instance), "gameScore.roundsPlayed"),
  function(ModelRef)
      local val = Engine.GetModelValue(ModelRef)
      if val then
          Hud.RoundCount:setText(Engine.Localize(val - 1))
      end
  end
)
```
The important part here is `gamescore.roundsPlayed`. You can apply this concept to any model.
Here is a full list of [LUI models](lui_models.md)