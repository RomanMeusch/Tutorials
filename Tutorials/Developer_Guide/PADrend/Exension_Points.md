---
title: Extension Points
permalink: exension_points
author: Sascha Brandt
license: cc-by-sa 4.0
path: Developer Guide->PADrend
last_updated: May 28, 2019
order: 3
---

## Extension Points

## Important Extensions
This chapter will describe different important PADrend extensions.

### General PADrend events
#### `PADrend_Init` (one time)
 Called before the main loop starts. This is an one time event.

#### `PADrend_Start`
Called after initialization (the eventLoop is executed here)

#### `PADrend_Exit`
Called before program is closed. Can be used to free handles, close network connections....

#### `PADrend_Message` with parameter: `String message`
Can be executed by a call to `PADrend.message`. PADrend has registered itself as a receiver for this event and it will output the message surrounded with `[[--` and `--]]`.


### EventLoop Extensions
#### `PADrend_KeyPressed` (chained) with parameter: `Util.UI.Event event`
The extensions are executed for key presses on the keyboard. The event (see [Util.UI.Event](UI.Event.md)) describing the key press is given as parameter. This is a chained extensions, if `true` or `Util.EXTENSION_BREAK` is returned the event is not processed by further handlers.
> Extensions for this extension point are not executed for key releases!

#### `PADrend_UIEvent` (chained) with parameter: `Util.UI.Event event`
The extensions are executed for user interface events. The event (see [Util.UI.Event](UI.Event.md)) description is given as parameter.
For example, the events can be caused by a mouse move, mouse button, keyboard, or joystick.

#### `PADrend_BeforeRendering` with parameter: `RenderingPass passes...`
Called before the rendering passes are executed. The only thing you probably want to do here is to modify or create rendering passes.
> When you are not implementing multiple rendering passes or want to perform fullscreen effects, this is NOT the right extension point for you! Have a look at 'PADrend_AfterFrame' instead.

#### `PADrend_BeforeRenderingPass` with parameter: `RenderingPass pass`
Called before each rendering pass is executed. Here is e.g. the place to push FBO's for postprocessing effects.

#### `PADrend_AfterRenderingPass` with parameter: `RenderingPass pass`
Called after each rendering pass is executed. Here is e.g. the place to pop your FBO's or to annotate the final image.

#### `PADrend_AfterRendering` with parameter: `MinSG.AbstractCamera camera`
Called after rendering has finished.

#### `PADrend_AfterFrame`
Called before the rendering buffer is swapped. Extensions should not modifiy the rendering buffer here, but can exploit the time until the rendering is finished for various other tasks. E.g. :
* Update the Camera
* Update gui data
* Execute commands

#### `PADrend_OnAvgFPSUpdated` with parameter: `Number fps`
In regular intervals (normally every 0.5sec), the average fps is recalculated and passed to interested listeners registered to this extension point.

### SceneManagement
#### `PADrend_OnSceneSelected` with parameter: `scene`
Called when a scene is selected.

#### `PADrend_OnSceneListChanged` with parameter: `Array scenes`
Called when the list of available scenes changed. Do not alter the array of scenes!

#### `PADrend_OnSceneRegistered` with parameter: `root`
Called when a new scene is registered (e.g. after loading). The parameter is the new scene's root node.

### SceneEditor/ObjectPlacer
#### `ObjectPlacer_OnObjectInserted` with parameter: `MinSG.Node node`
Called whenever an object (=node) has been inserted
