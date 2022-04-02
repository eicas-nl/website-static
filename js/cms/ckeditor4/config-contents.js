/**
 * Custom configuration for editing content (contents.create/edit).
 *
 */

CKEDITOR.editorConfig = function(config) {
	console.log('started loading config');
	// https://ckeditor.com/docs/ckeditor4/latest/api/CKEDITOR_config.html

	config.allowedContent = [
		// allow elements h2, h3 and p without properties
		'h2 h3 p',
		// allow elements b and i, without any properties
		'b i',
		// allow elements ul, ol and li, without any properties
		'ul ol li',
		// allow elements blockquote, without any properties
		'blockquote',
		// allow tables
		'table thead tbody tr th td',
		// allow element a, but with required href-attribute and optional target
		'a[!href,target]'
	].join(';');
	config.contentsCss = '/css/ckeditor4-cms.css';
	config.format_tags = 'h2;h3;p';
	config.language = 'nl';
	config.linkDefaultProtocol = 'https://';
	config.removeButtons = 'Underline,Subscript,Superscript';
	config.removeDialogTabs = 'image:advanced;link:advanced';
	config.stylesSet = null;//[
		// Block-level styles
		// {
		// 	name: 'Alternatieve kop 2',
		// 	element: 'h2',
		// 	attributes: {'class': 'alt'}
		// },
		// {
		// 	name: 'Alternatieve kop 3',
		// 	element: 'h3',
		// 	attributes: {'class': 'alt'}
		// },
		// {
		// 	name: 'Alternatieve paragraaf',
		// 	element: 'p',
		// 	attributes: {'class': 'alt'}
		// }
	
		// Inline styles
		// { name: 'CSS Style', element: 'span', attributes: { 'class': 'my_style' } },
		// { name: 'Marker: Yellow', element: 'span', styles: { 'background-color': 'Yellow' } }
	//];

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
		{ name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ] },
		{ name: 'styles' },
		{
			name: 'document',
			groups: [ 'mode', 'document', 'doctools' ]
		},
		{ name: 'others' }
	];
};
