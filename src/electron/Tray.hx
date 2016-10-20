package electron;
@:jsRequire("electron", "Tray") @:require("electron") extern class Tray extends js.node.events.EventEmitter<electron.Tray> {
	function new(image:electron.NativeImage):Void;
	/**
		Destroys the tray icon immediately.
	**/
	function destroy():Void;
	/**
		Sets the image associated with this tray icon.
	**/
	function setImage(image:electron.NativeImage):Void;
	/**
		Sets the image associated with this tray icon when pressed on macOS.
	**/
	function setPressedImage(image:electron.NativeImage):Void;
	/**
		Sets the hover text for this tray icon.
	**/
	function setToolTip(toolTip:String):Void;
	/**
		Sets the title displayed aside of the tray icon in the status bar.
	**/
	function setTitle(title:String):Void;
	/**
		Sets when the tray's icon background becomes highlighted (in blue). Note: You can use highlightMode with a BrowserWindow by toggling between 'never' and 'always' modes when the window visibility changes.
	**/
	function setHighlightMode(mode:String):Void;
	/**
		Displays a tray balloon.
	**/
	function displayBalloon(options:{ @:optional
	var icon : electron.NativeImage; @:optional
	var title : String; @:optional
	var content : String; }):Void;
	/**
		Pops up the context menu of the tray icon. When menu is passed, the menu will be shown instead of the tray icon's context menu. The position is only available on Windows, and it is (0, 0) by default.
	**/
	function popUpContextMenu(?menu:electron.Menu, position:{ @:optional
	var x : Int; @:optional
	var y : Int; }):Void;
	/**
		Sets the context menu for this icon.
	**/
	function setContextMenu(menu:electron.Menu):Void;
	/**
		The bounds of this tray icon as Object.
	**/
	function getBounds():electron.Rectangle;
	function isDestroyed():Bool;
}