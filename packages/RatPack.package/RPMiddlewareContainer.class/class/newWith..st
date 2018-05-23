as yet unclassified
newWith: aGlobalMiddleware

	| container |
	container := self basicNew.
	container globalMiddleware: aGlobalMiddleware.
	^ container