as yet unclassified
newWith: aGlobalMiddleware andKey: aGlobalMiddlewareKey

	| container |
	container := self basicNew.
	container initialize.
	container globalMiddleware: aGlobalMiddleware.
	container globalMiddlewareKey: aGlobalMiddlewareKey.
	^ container