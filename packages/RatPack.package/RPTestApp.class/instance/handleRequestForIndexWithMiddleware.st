routes
handleRequestForIndexWithMiddleware
	<get: '/indexWithMiddleware'>
	<put: '/indexWithMiddleware'>
	<post: '/indexWithMiddleware'>
	<middleware: #(#globalMiddleware #RPTestMiddlewareUppercase) >
	
	indexHandlerCalled := true.
	
	^ 'Middleware works'