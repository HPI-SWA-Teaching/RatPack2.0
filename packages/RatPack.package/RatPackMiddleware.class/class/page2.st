pages
page2
	^HelpTopic 
		title: 'Enabling Middleware'
		contents:	
	'Enabling Middleware
	
	globalMiddleware

	You can add global middleware which is user for every handler. Do this, you have to change the class method "globalMiddleware" of your application. It should return an "OrderedCollection" including symbols that match the class names of the middleware you would like to use.

	Pragmas

	In each handler, you can specify the middleware that should be used with this handler. To do this, simply add a pragma with key "middleware" and a symbol array of class names for middleware you would like to use to the handler, e.g. 
	
		<middleware: #(#MyMiddleware1 #MyMiddleware2) > 
		
	By default, the global middleware will be prepended to this list. You can change this position by adding the key that your application specifies in it''s "globalMiddlewareKey" class method. It defaults to 
	
		"#globalMiddleware".
		
	So, if your pragma is 
	
		<middleware: #(#MyMiddleware1 #globalMiddleware #MyMiddleware2) >,
		
	 the global middleware will be used between "MyMiddleware1" and "MyMiddleware2".' 