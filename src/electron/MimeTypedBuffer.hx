package electron;
/**
	@see http://electron.atom.io/docs/api/structures/mime-typed-buffer
**/
typedef MimeTypedBuffer = {
	/**
		The mimeType of the Buffer that you are sending
	**/
	var mimeType : String;
	/**
		The actual Buffer content
	**/
	var data : js.node.Buffer;
}
