/**
 * Custom configuration for editing a bio (profiles.create/edit).
 *
 */

 CKEDITOR.editorConfig = function(config) {
	// https://ckeditor.com/docs/ckeditor4/latest/api/CKEDITOR_config.html

	config.allowedContent = [
		// allow elements p, b and i, all without any properties
		'h2 h3 p b i',
		// allow element a, but with required href-attribute and optional target
		'a[!href,target]'
	].join(';');
	config.contentsCss = '/css/ckeditor4-cms.css';
	config.format_tags = 'h2;h3;p';
	config.language = 'nl';
	config.linkDefaultProtocol = 'https://';
	config.removeButtons = 'Underline,Subscript,Superscript';
	config.removeDialogTabs = 'image:advanced;link:advanced';
	config.removePlugins = 'stylescombo';
	config.toolbarGroups = [
		{
			name: 'clipboard',
			groups: [ 'clipboard', 'undo' ]
		},
		{ name: 'links' },
		{ name: 'insert' },
		{ name: 'forms' },
		{ name: 'tools' },
		{
			name: 'basicstyles',
			groups: [ 'basicstyles', 'cleanup' ]
		},
		{ name: 'styles' },
		{
			name: 'document',
			groups: [ 'mode', 'document', 'doctools' ]
		},
		{ name: 'others' }
	];
};
