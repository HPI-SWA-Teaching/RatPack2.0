middleware
storeMiddleware: aMiddlewareList for: aHandlerName

	| cleanedList |
	self halt.
	cleanedList := aMiddlewareList asOrderedCollection.
	aMiddlewareList indexOf: (self class globalMiddlewareKey) ifAbsent: [cleanedList add: (self class globalMiddleware) beforeIndex: 1] .
	cleanedList do: [:middleware | middleware = self class globalMiddlewareKey
		ifTrue: [self class globalMiddleware do: [:globalMiddleware | (self middleware add: (aHandlerName -> globalMiddleware))]]
		ifFalse:[(self middleware add: (aHandlerName -> middleware))] ].