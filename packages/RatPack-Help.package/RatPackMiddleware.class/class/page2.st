pages
page2
	^HelpTopic 
		title: 'Enabling Middleware'
		contents:	
	'Enabling Middleware
	
globalMiddleware

You can add global middleware which is user for every handler. The global middleware is a setting stored in application settings. To set these, RPApplication includes a convenience method called ''initializeSettings''. You can override this and set the global middleware as well as other settings, like this:

	initializeSettings
		self settings globalMiddleware: {#RPTestMiddleware. #RPGlobalHeaderMiddleware. #RPContentParserMiddleware} asOrderedCollection;


Pragmas

In each handler, you can specify the middleware that should be used with this handler. To do this, simply add a pragma with key "middleware" and a symbol array of class names for middleware you would like to use to the handler, e.g. 
	
	<middleware: #(#MyMiddleware1 #MyMiddleware2) > 
		
By default, the global middleware will be prepended to this list. You can change this position by adding the key that your application specifies in it''s "globalMiddlewareKey" class method. It defaults to 
	
	"#globalMiddleware".
		
So, if your pragma is 
	
	<middleware: #(#MyMiddleware1 #globalMiddleware #MyMiddleware2) >,
		
the global middleware will be applied between "MyMiddleware1" and "MyMiddleware2".' 