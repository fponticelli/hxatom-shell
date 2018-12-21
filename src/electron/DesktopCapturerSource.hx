package electron;
/**
	@see http://electronjs.org/docs/api/structures/desktop-capturer-source
**/
typedef DesktopCapturerSource = {
	/**
		The identifier of a window or screen that can be used as a chromeMediaSourceId constraint when calling [navigator.webkitGetUserMedia]. The format of the identifier will be window:XX or screen:XX, where XX is a random generated number.
	**/
	var id : String;
	/**
		A screen source will be named either Entire Screen or Screen , while the name of a window source will match the window title.
	**/
	var name : String;
	/**
		A thumbnail image. There is no guarantee that the size of the thumbnail is the same as the thumbnailSize specified in the options passed to desktopCapturer.getSources. The actual size depends on the scale of the screen or window.
	**/
	var thumbnail : electron.NativeImage;
	/**
		A unique identifier that will correspond to the id of the matching returned by the . On some platforms, this is equivalent to the XX portion of the id field above and on others it will differ. It will be an empty string if not available.
	**/
	var display_id : String;
}
