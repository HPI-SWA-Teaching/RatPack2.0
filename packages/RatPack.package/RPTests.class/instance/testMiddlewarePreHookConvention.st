test - database - postgresql
testMiddlewarePreHookConvention

	| middleware |
	middleware := RPAntiPreHookConventionMiddleware new.
	self assert: (middleware assertedPreHookResult: true)  equals: true.
	self assert: (middleware assertedPreHookResult: false) equals: false.
	self assert: ([middleware assertedPreHookResult: (middleware preHook: nil). false] on: Error do: [true])