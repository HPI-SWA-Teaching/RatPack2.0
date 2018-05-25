routes
handleRequestForIndexStopped
	
	<get: '/indexStopped'>
	<middleware: #(#RPStoppingMiddleware) >
	
	indexHandlerCalled := true.
