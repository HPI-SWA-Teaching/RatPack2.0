accessing
registerMiddleware: aMiddlewareList forHandler: aSymbol
	
	self symbolsForHandler at: aSymbol ifPresent: [ self error: 'Changing Middleware at runtime is prohibited.' ].
	^ self symbolsForHandler at: aSymbol ifAbsentPut: aMiddlewareList