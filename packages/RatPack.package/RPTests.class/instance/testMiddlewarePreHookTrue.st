test - middleware
testMiddlewarePreHookTrue
	
	| env blockCalled |
	blockCalled := false.
	env := RPDynamicEnv newFrom: {#rpRouteHandler ->#handler . #preHookCounter -> 0 . #postHookCounter -> 0 . #rpRequest -> (HttpRequest new url: '')}.
	RPTestMiddleware new handle: env next: [blockCalled := true].
	self assert: (env at: #preHookCounter) equals: 1.
	self assert: (env at: #postHookCounter) equals: 1.
	self assert: blockCalled.