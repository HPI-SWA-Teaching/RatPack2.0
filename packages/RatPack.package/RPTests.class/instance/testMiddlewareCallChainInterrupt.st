test - middleware
testMiddlewareCallChainInterrupt

	RPTestHelper get: '/indexStopped' on: app.
	self assert: app indexHandlerCalled equals: false.