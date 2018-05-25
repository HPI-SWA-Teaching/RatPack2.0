test - middleware
testMiddlewarePreHookFalse
	
	| env |
	env := RPDynamicEnv newFrom: {#rpRouteHandler ->#handler . #preHookCounter -> 0 . #postHookCounter -> 0 . #rpRequest -> (HttpRequest new url: '')}.
	RPStoppingMiddleware new handle: env next: [self assert: false].
	self assert: (env at: #preHookCounter) equals: 1.
	self assert: (env at: #postHookCounter) equals: 0.