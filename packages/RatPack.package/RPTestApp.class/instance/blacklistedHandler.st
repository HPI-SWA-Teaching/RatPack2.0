routes
blacklistedHandler
	<get: '/blacklistTest'>
	<middleware: #(#globalMiddleware) >
	
	indexHandlerCalled := true.
	
	^ 'I am Blacklisted'