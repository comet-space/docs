# 4.1
## _CLIENT_SETTING_

|Packet
|---
|`7`

```as
// net.bigpoint.darkorbit.net.ConnectionManager
case ServerCommands.CLIENT_SETTING:
    this.settingsAssembly.assembleSetting(_loc3_.splice(2));
    break;
```
```as
// net.bigpoint.darkorbit.net.SettingManager
public function assembleSetting(param1:Array) : void
{
    var _loc2_:String = param1[0];
    var _loc3_:String = param1[1];

    if(this.delegateDict[_loc2_] != null) {
        this.delegateDict[_loc2_](_loc3_);
    } else if (_loc2_.length > 15 && _loc2_.substring(0,15) == "WINDOW_SETTINGS") {
        this.assembleSetWindowProperties(_loc2_,_loc3_);
    }
}
```

### SET_SELECTED_ROCKET

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`SELECTED_ROCKET`|`integer`|`1`|`\|7\|SELECTED_ROCKET\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetSelectedRocket(param1:String) : void
{
    Settings.selectedRocket = int(param1);
}
```


### SET_SELECTED_BATTERY

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`SELECTED_BATTERY`|`integer`|`1`|`\|7\|SELECTED_BATTERY\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetSelectedBattery(param1:String) : void
{
    Settings.selectedLaser = int(param1);
}
```

### SET_QUALITY_EXPLOSION

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`QUALITY_EXPLOSION`|`integer`|`1`|`\|7\|QUALITY_EXPLOSION\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetQualityExplosion(param1:String) : void
{
    Settings.qualityExplosion = int(param1);
}
```

### SET_QUALITY_EFFECT

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`QUALITY_EFFECT`|`integer`|`1`|`\|7\|QUALITY_EFFECT\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetQualityEffect(param1:String) : void
{
    Settings.qualityEffect = int(param1);
}
```

### SET_QUALITY_ATTACK

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`QUALITY_ATTACK`|`integer`|`1`|`\|7\|QUALITY_ATTACK\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetQualityAttack(param1:String) : void
{
    Settings.qualityAttack = int(param1);
}
```

### SET_QUALITY_COLLECTABLE

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`QUALITY_COLLECTABLE`|`integer`|`1`|`\|7\|QUALITY_COLLECTABLE\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetQualityCollectable(param1:String) : void
{
    Settings.qualityCollectable = int(param1);
}
```

### SET_QUALITY_ENGINE

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`QUALITY_ENGINE`|`integer`|`1`|`\|7\|QUALITY_ENGINE\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetQualityEngine(param1:String) : void
{
    Settings.qualityEngine = int(param1);
    var _loc2_:Map = _main.screenManager.map;

    if (_loc2_ != null) {
        _loc2_.getShipManager().updateEngineSmokeTimers();
    }
}
```

### SET_QUALITY_SHIP

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`QUALITY_SHIP`|`integer`|`1`|`\|7\|QUALITY_SHIP\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetQualityShip(param1:String) : void
{
    Settings.qualityShip = int(param1);
    var _loc2_:Map = _main.screenManager.map;

    if (_loc2_ != null) {
        _loc2_.getShipManager().updateShipVisualStyle();
    }
}
```

### SET_QUALITY_POIZONE

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`QUALITY_POIZONE`|`integer`|`1`|`\|7\|QUALITY_POIZONE\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetQualityPoizone(param1:String) : void
{
    Settings.qualityPoizone = int(param1);
    var _loc2_:Map = _main.screenManager.map;

    if (_loc2_ != null) {
        _loc2_.poiManager.updatePOIZoneVisualStyle();
    }
}
```

### SET_QUALITY_BACKGROUND

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`QUALITY_BACKGROUND`|`integer`|`1`|`\|7\|QUALITY_BACKGROUND\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetQualityBackground(param1:String) : void
{
    var _loc2_:int = Settings.qualityBackground;
    Settings.qualityBackground = int(param1);
    var _loc3_:Map = _main.screenManager.map;

    if (_loc3_ != null) {
        _loc3_.getBackgroundManager().updateBackgroundQuality(_loc2_);
        _loc3_.getPlanetManager().updatePlanetQuality(_loc2_);
        _loc3_.getLensflareManager().updateLensflareQuality(_loc2_);
    }
}
```

### SET_QUALITY_CUSTOMIZED

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`QUALITY_CUSTOMIZED`|`integer`|`1`|`\|7\|QUALITY_CUSTOMIZED\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetQualityCustomized(param1:String) : void
{
    Settings.qualityCustomized = Boolean(int(param1));
}
```

### SET_QUALITY_PRESETTING

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`QUALITY_PRESETTING`|`integer`|`1`|`\|7\|QUALITY_PRESETTING\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetQualityPresetting(param1:String) : void
{
    Settings.qualityPresetting = int(param1);
}
```

### SET_RESOLUTION

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`SET_RESOLUTION`|`integer`|`1`|`\|7\|SET_RESOLUTION\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetResolution(param1:String) : void
{
    Settings.resolutionID = int(param1);
}
```

### SET_PRELOAD_USER_SHIPS

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`PRELOAD_USER_SHIPS`|`boolean`|`1`|`\|7\|PRELOAD_USER_SHIPS\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetPreloadUserShips(param1:String) : void
{
    Settings.preloadUserShips = Boolean(int(param1));
}
```

### SET_ALWAYS_DRAGGABLE_WINDOWS

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`ALWAYS_DRAGGABLE_WINDOWS`|`boolean`|`1`|`\|7\|ALWAYS_DRAGGABLE_WINDOWS\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetWindowsAlwaysDraggable(param1:String) : void
{
    var _loc3_:SimpleWindow = null;
    Settings.dragWindowsAlways = Boolean(int(param1));
    var _loc2_:Array = _main.getGuiManager().getWindows();

    for each(_loc3_ in _loc2_) {
        _loc3_.updateDraggerButtonMode();
    }
}
```

### SET_DISPLAY_WINDOW_BACKGROUND

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`DISPLAY_WINDOW_BACKGROUND`|`boolean`|`1`|`\|7\|DISPLAY_WINDOW_BACKGROUND\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetDisplayWindowsBackground(param1:String) : void
{
    var _loc3_:SimpleWindow = null;
    Settings.showWindowsBackground = Boolean(int(param1));
    var _loc2_:Array = _main.getGuiManager().getWindows();

    for each(_loc3_ in _loc2_) {
        if (Settings.showWindowsBackground) {
            _loc3_.removeListeners();
            _loc3_.fadeInWindow();
        } else {
            _loc3_.setListeners();
            _loc3_.fadeOutWindow();
        }
    }
}
```

### SET_AUTO_START

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`AUTO_START`|`boolean`|`1`|`\|7\|AUTO_START\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetAutostart(param1:String) : void
{
    Settings.autoStartEnabled = Boolean(int(param1));
}
```

### SET_AUTO_AMMO_CHANGE

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`AUTO_AMMO_CHANGE`|`boolean`|`1`|`\|7\|AUTO_AMMO_CHANGE\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetAutoChangeAmmo(param1:String) : void
{
    Settings.autochangeAmmo = Boolean(int(param1));
}
```

### SET_DISPLAY_NOT_FREE_CARGO_BOXES

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`DISPLAY_NOT_FREE_CARGO_BOXES`|`boolean`|`1`|`\|7\|DISPLAY_NOT_FREE_CARGO_BOXES\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetDisplayNotFreeCargoBoxes(param1:String) : void
{
    Settings.displayNotFreeCargoBoxes = Boolean(int(param1));
    var _loc2_:Map = _main.screenManager.map;

    if(_loc2_ != null) {
        _loc2_
            .getCollectableManager()
            .setCollectableVisibility(
                CollectablePattern.TYPE_BOX,
                Box.TYPE_NOT_FREE_CARGO_BOX,
                Settings.displayNotFreeCargoBoxes
            );
    }
}
```

### SET_DISPLAY_FREE_CARGO_BOXES

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`DISPLAY_FREE_CARGO_BOXES`|`boolean`|`1`|`\|7\|DISPLAY_FREE_CARGO_BOXES\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetDisplayFreeCargoBoxes(param1:String) : void
{
    Settings.displayFreeCargoBoxes = Boolean(int(param1));
    var _loc2_:Map = _main.screenManager.map;

    if(_loc2_ != null) {
        _loc2_
            .getCollectableManager()
            .setCollectableVisibility(
                CollectablePattern.TYPE_BOX,
                Box.TYPE_FREE_CARGO_BOX,
                Settings.displayFreeCargoBoxes
            );
    }
}
```

### SET_DISPLAY_BONUS_BOXES

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`DISPLAY_BONUS_BOXES`|`boolean`|`1`|`\|7\|DISPLAY_BONUS_BOXES\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetDisplayBonusBoxes(param1:String) : void
{
    Settings.displayBonusBoxes = Boolean(int(param1));
    var _loc2_:Map = _main.screenManager.map;

    if(_loc2_ != null) {
        _loc2_
            .getCollectableManager()
            .setCollectableVisibility(
                CollectablePattern.TYPE_BOX,
                Box.TYPE_BONUS_BOX,
                Settings.displayBonusBoxes
            );
    }
}
```

### SET_DISPLAY_ORE

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`DISPLAY_ORE`|`boolean`|`1`|`\|7\|DISPLAY_ORE\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetDisplayOre(param1:String) : void
{
    Settings.displayResources = Boolean(int(param1));
    var _loc2_:Map = _main.screenManager.map;

    if(_loc2_ != null) {
        _loc2_
            .getCollectableManager()
            .setCollectableVisibility(
                CollectablePattern.TYPE_ORE,
                -1,
                Settings.displayResources
            );
    }
}
```

### SET_AUTO_BOOST

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`AUTO_BOOST`|`boolean`|`1`|`\|7\|AUTO_BOOST\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetAutoBoost(param1:String) : void
{
    Settings.autoBoost = Boolean(int(param1));
}
```

### SET_AUTO_REFINEMENT

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`AUTO_REFINEMENT`|`boolean`|`1`|`\|7\|AUTO_REFINEMENT\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetAutoRefinement(param1:String) : void
{
    Settings.autoRefinement = Boolean(int(param1));
}
```

### SET_DISPLAY_CHAT

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`DISPLAY_CHAT`|`boolean`|`1`|`\|7\|DISPLAY_CHAT\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetDisplayChat(param1:String) : void
{
    Settings.displayChat = Boolean(int(param1));
}
```

### SET_DISPLAY_NOTIFICATIONS

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`DISPLAY_NOTIFICATIONS`|`boolean`|`1`|`\|7\|DISPLAY_NOTIFICATIONS\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetDisplayNotifications(param1:String) : void
{
    Settings.displayNotifications = Boolean(int(param1));

    if (Settings.displayNotifications) {
       _main.getProfiler().start();
    }
}
```

### SET_SHOW_DRONES

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`SHOW_DRONES`|`boolean`|`1`|`\|7\|SHOW_DRONES\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetDisplayDrones(param1:String) : void
{
    Settings.displayDrones = Boolean(int(param1));
    var _loc2_:Map = _main.screenManager.map;

    if (_loc2_ != null) {
        if (!Settings.displayDrones) {
            _loc2_.getDroneManager().removeAllDrones();
        }
    }
}
```

### SET_QUICKBAR_SLOT

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`QUICKBAR_SLOT`|`string`|`3,4,5,6,7,39,55,45,13,57`|`\|7\|QUICKBAR_SLOT\|57`

10 **comma separated** [super action buttons](#super-action-buttons) will do ( `-1` for none).

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetQuickSlots(param1:String) : void
{
    if (param1.length > 0) {
        QuickMenu.predefinedActions = param1.split(ServerCommands.SETTING_PROPERTY_SEPARATOR);
    }
}
```

### SET_QUICKSLOT_STOP_ATTACK

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`QUICKSLOT_STOP_ATTACK`|`boolean`|`1`|`\|7\|QUICKSLOT_STOP_ATTACK\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetQuickSlotStopAttack(param1:String) : void
{
    Settings.quickSlotStopAttack = Boolean(int(param1));
}
```

### SET_DOUBLECLICK_ATTACK

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`DOUBLECLICK_ATTACK`|`boolean`|`1`|`\|7\|DOUBLECLICK_ATTACK\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetDoubleClickAttack(param1:String) : void
{
    Settings.doubleclickAttackEnabled = Boolean(int(param1));
}
```

### SET_PLAY_MUSIC

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`PLAY_MUSIC`|`boolean`|`1`|`\|7\|PLAY_MUSIC\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetPlayMusic(param1:String) : void
{
    Settings.playMusic = Boolean(int(param1));
    var _loc2_:Map = _main.screenManager.map;

    if (!Settings.playMusic) {
        AudioManager.stopMusic();
    } else if (_loc2_ != null) {
        _loc2_.loadMusic();
    }
}
```

### SET_PLAY_SFX

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`PLAY_SFX`|`boolean`|`1`|`\|7\|PLAY_SFX\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetPlaySFX(param1:String) : void
{
    Settings.playSFX = Boolean(int(param1));
}
```

### SET_DISPLAY_PLAYER_NAMES

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`DISPLAY_PLAYER_NAMES`|`boolean`|`1`|`\|7\|DISPLAY_PLAYER_NAMES\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetDisplayPlayerNames(param1:String) : void
{
    Settings.displayPlayerNames = Boolean(int(param1));
    var _loc2_:Map = _main.screenManager.map;

    if (_loc2_ != null) {
        _loc2_.getShipManager().updateLabelVisibility();
    }
}
```

### SET_DISPLAY_HITPOINT_BUBBLES

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`DISPLAY_HITPOINT_BUBBLES`|`boolean`|`1`|`\|7\|DISPLAY_HITPOINT_BUBBLES\|1`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetDisplayHitpointBubbles(param1:String) : void
{
    Settings.displayHitpointBubbles = Boolean(int(param1));
}
```

### SET_BAR_STATUS

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`BAR_STATUS`|`string`|`1,0,2,0`|`\|7\|BAR_STATUS\|1,0,4,1`

The `ServerCommands.SETTING_PROPERTY_SEPARATOR` is a **comma**.

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetBarStatus(param1:String) : void
{
    var _loc4_:int = 0;
    var _loc5_:int = 0;
    var _loc2_:Array = param1.split(ServerCommands.SETTING_PROPERTY_SEPARATOR);
    var _loc3_:int = 0;

    while (_loc3_ < _loc2_.length) {
        _loc4_ = int(_loc2_[_loc3_]);
        _loc5_ = int(_loc2_[_loc3_ + 1]);
        _main.getGuiManager().addBarStatus(new BarStatus(_loc4_, _loc5_));
        _loc3_ = _loc3_ + 2;
    }
}
```

### SET_MINIMAP_SCALE

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`MINIMAP_SCALE`|`integer`|`6`|`\|7\|MINIMAP_SCALE,1`|7`

The scale factor goes from **3 to 11** (the lower, the bigger).

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetMinimapScale(param1:String) : void
{
    MinimapManager.scaleFactor = int(param1);
}
```

### SET_RESIZABLE_WINDOWS

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`RESIZABLE_WINDOWS`|`string`|`1,1,1,4,34,0`|`\|7\|RESIZABLE_WINDOWS,1`|1,1,1`

The `ServerCommand.SETTING_PROPERTY_SEPARATOR` is a **comma**.

**Three** values are required for a single window (hence the `_loc3_ + 3` at the end of the `while` iterator).

The third value of each group of three is the **toggle** option for the given window. Therefore, it must be treated as a `boolean`.

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetWindowSizes(param1:String) : void
{
    var _loc4_:int = 0;
    var _loc5_:int = 0;
    var _loc6_:int = 0;
    var _loc2_:Array = param1.split(ServerCommands.SETTING_PROPERTY_SEPARATOR);
    var _loc3_:int = 0;

    while (_loc3_ < _loc2_.length) {
        _loc4_ = int(_loc2_[_loc3_]);
        _loc5_ = int(_loc2_[_loc3_ + 1]);
        _loc6_ = int(_loc2_[_loc3_ + 2]);
        GuiManager.resizableWindowSizes[_loc4_] = new Point(_loc5_, _loc6_);
        _loc3_ = _loc3_ + 3;
    }
}
```

### SET_SLOTMENU_ORDER

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`SLOTMENU_ORDER`|`integer`|`6`|`\|7\|SLOTMENU_ORDER,1`|7`

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetSlotMenuAlign(param1:String) : void
{
    QuickMenu.slotOrder = int(param1);
}
```

### SET_MAINMENU_POSITION

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`MAINMENU_POSITION`|`string`|`100,280`|`\|7\|MAINMENU_POSITION,1`|100,280`

The `ServerCommands.SETTING_PROPERTY_SEPARATOR` is a **comma**.

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetMainMenuPosition(param1:String) : void
{
    var _loc2_:Array = param1.split(ServerCommands.SETTING_PROPERTY_SEPARATOR);
    var _loc3_:ResolutionPattern = PatternManager.resolutionPatterns[Settings.resolutionID];
    _loc3_.setMainMenuPosition(new Point(int(_loc2_[0]), int(_loc2_[1])));
}
```

### SET_SLOTMENU_POSITION

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`SLOTMENU_POSITION`|`string`|`120,300`|`\|7\|SLOTMENU_POSITION,1`|120,300`

The `ServerCommands.SETTING_PROPERTY_SEPARATOR` is a **comma**.

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleSetSlotMenuPosition(param1:String) : void
{
    var _loc2_:Array = param1.split(ServerCommands.SETTING_PROPERTY_SEPARATOR);
    var _loc3_:ResolutionPattern = PatternManager.resolutionPatterns[Settings.resolutionID];
    _loc3_.setSlotMenuPosition(new Point(int(_loc2_[0]), int(_loc2_[1])));
}
```

### MAP_READY_HANDSHAKE

|Packet|Value type|Value example|Usage example
|---|---|---|---
|`HS`|`string`|`0`|`\|7\|HS\|0`|0`

Here, note that the `param1` doesn't seem to be used.

```as
// net.bigpoint.darkorbit.net.SettingManager
private function assembleClientInitialized(param1:Array) : void
{
    this.main.getGuiManager().updateSpacemapWindow();

    if (Hero.cpuItems[CPUItem.TYPE_ADVANCED_JUMP] as CPUItem != null) {
       this.main.getGuiManager().requestSpacemapWindowServerUpdate();
    }
}
```

## Super action buttons

|Key|Value
|---|---
|`ACTION_ACTIVATE_GATE`|`2`
|`ACTION_FASTREPAIR`|`34`
|`ACTION_HELP`|`25`
|`ACTION_LOGOUT`|`9`
|`ACTION_SHOW_SETTINGS_WINDOW`|`8`
|`ACTION_TRADE`|`10`
|`ACTIVATION_BATTLE_REP_BOT`|`59`
|`ACTIVATION_BUY`|`25`
|`ACTIVATION_CHAIN_BOLT`|`51`
|`ACTIVATION_CPU_AIM`|`24`
|`ACTIVATION_CPU_AMMOBUY`|`42`
|`ACTIVATION_CPU_AROL`|`22`
|`ACTIVATION_CPU_CLOAK`|`21`
|`ACTIVATION_CPU_DRONE_REPAIR`|`41`
|`ACTIVATION_CPU_HM7`|`35`
|`ACTIVATION_CPU_JUMP`|`20`
|`ACTIVATION_CPU_RLLB`|`47`
|`ACTIVATION_CPU_ROBOT`|`23`
|`ACTIVATION_CPU_ROCKETBUY`|`56`
|`ACTIVATION_ENERGY_LEECH`|`54`
|`ACTIVATION_EXPLOSIVE`|`14`
|`ACTIVATION_LASER`|`0`
|`ACTIVATION_ROCKET_PRECISION`|`55`
|`ACTIVATION_ROCKET`|`1`
|`ACTIVATION_SHIELD_BACKUP`|`53`
|`ACTIVATION_SKILL_DIMINISHER`|`64`
|`ACTIVATION_SKILL_LIGHNTING`|`73`
|`ACTIVATION_SKILL_SENTINEL`|`66`
|`ACTIVATION_SKILL_SOLACE`|`63`
|`ACTIVATION_SKILL_SPECTRUM`|`65`
|`ACTIVATION_SKILL_VENOM`|`67`
|`ACTIVATION_SPEED_LEECH`|`60`
|`ACTIVATION_TECH`|`52`
|`BUY_LASER_1`|`26`
|`BUY_LASER_2`|`27`
|`BUY_LASER_3`|`28`
|`BUY_LASER_4`|`29`
|`BUY_LASER_5`|`30`
|`BUY_ROCKET_PLT_2021`|`33`
|`BUY_ROCKET_PLT_2026`|`32`
|`BUY_ROCKET_PLT_3030`|`58`
|`BUY_ROCKET_R_310`|`31`
|`FIREWORK_IGNITE`|`40`
|`SELECT_CPU_JUMP_TARGET`|`71`
|`SELECTION_EMP`|`45`
|`SELECTION_FIREWORK_1`|`36`
|`SELECTION_FIREWORK_2`|`37`
|`SELECTION_FIREWORK_3`|`38`
|`SELECTION_INSTASHIELD`|`17`
|`SELECTION_LASER_1`|`3`
|`SELECTION_LASER_2`|`4`
|`SELECTION_LASER_3`|`5`
|`SELECTION_LASER_4`|`6`
|`SELECTION_LASER_5`|`7`
|`SELECTION_LASER_6`|`39`
|`SELECTION_LAUNCHER_ROCKET_ECO10`|`50`
|`SELECTION_LAUNCHER_ROCKET_HST01`|`48`
|`SELECTION_LAUNCHER_ROCKET_UBR100`|`49`
|`SELECTION_LOAD_ROCKET_LAUNCHER`|`46`
|`SELECTION_MINE_DDM`|`70`
|`SELECTION_MINE_EMP`|`68`
|`SELECTION_MINE_SAB`|`69`
|`SELECTION_MINE`|`15`
|`SELECTION_ROCKET_DCR_250`|`72`
|`SELECTION_ROCKET_PLD_8`|`44`
|`SELECTION_ROCKET_PLT_2021`|`13`
|`SELECTION_ROCKET_PLT_2026`|`12`
|`SELECTION_ROCKET_PLT_3030`|`57`
|`SELECTION_ROCKET_R_310`|`11`
|`SELECTION_ROCKET_WIZ`|`43`
|`SELECTION_SMARTBOMB`|`16`
