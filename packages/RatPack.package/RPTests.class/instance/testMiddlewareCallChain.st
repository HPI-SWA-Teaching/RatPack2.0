test - middleware
testMiddlewareCallChain

	| result |
	result := RPTestHelper get: '/indexWithMiddleware' on: app.
	self assert: (result contents contents includesSubString: 'MIDDLEWARE WORKS').