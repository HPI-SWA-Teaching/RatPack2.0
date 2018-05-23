routes
handleRequestForIndexWithMiddleware
	<get: '/index'>
	<put: '/index'>
	<post: '/index'>
	<middleware: #(globalMiddleware RPTestMiddleware) >
	
	indexHandlerCalled := true.
	
	^ 'Middleware works'