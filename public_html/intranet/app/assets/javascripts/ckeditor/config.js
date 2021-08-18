if (typeof(CKEDITOR) != 'undefined') {
  CKEDITOR.editorConfig = function( config )
  {

    config.height = '800px';
    config.width = 'auto';
    config.enterMode = CKEDITOR.ENTER_BR;
    config.shiftEnterMode = CKEDITOR.ENTER_BR;
    config.autoParagraph = false;


    // Filebrowser routes
    // The location of an external file browser, that should be launched when "Browse Server" button is pressed.
    config.filebrowserBrowseUrl = "/ckeditor/attachment_files";
    // The location of an external file browser, that should be launched when "Browse Server" button is pressed in the Flash dialog.
    config.filebrowserFlashBrowseUrl = "/ckeditor/attachment_files";
    // The location of a script that handles file uploads in the Flash dialog.
    config.filebrowserFlashUploadUrl = "/ckeditor/attachment_files";
    // The location of an external file browser, that should be launched when "Browse Server" button is pressed in the Link tab of Image dialog.
    config.filebrowserImageBrowseLinkUrl = "/ckeditor/pictures";
    // The location of an external file browser, that should be launched when "Browse Server" button is pressed in the Image dialog.
    config.filebrowserImageBrowseUrl = "/ckeditor/pictures";
    // The location of a script that handles file uploads in the Image dialog.
    config.filebrowserImageUploadUrl = "/ckeditor/pictures";
    // The location of a script that handles file uploads.
    config.filebrowserUploadUrl = "/ckeditor/attachment_files";

    config.toolbarGroups = [
		{ name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
		{ name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
		{ name: 'editing', groups: [ 'find', 'selection', 'spellchecker', 'editing' ] },
		{ name: 'forms', groups: [ 'forms' ] },
		'/',
		{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
		{ name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
		{ name: 'links', groups: [ 'links' ] },
		{ name: 'insert', groups: [ 'insert' ] },
		'/',
		{ name: 'styles', groups: [ 'styles' ] },
		{ name: 'colors', groups: [ 'colors' ] },
		{ name: 'tools', groups: [ 'tools' ] },
		{ name: 'others', groups: [ 'others' ] },
		{ name: 'about', groups: [ 'about' ] }
	];
  }
}
