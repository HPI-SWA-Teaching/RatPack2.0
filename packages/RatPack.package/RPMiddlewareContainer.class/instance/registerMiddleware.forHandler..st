accessing
registerMiddleware: aMiddlewareList forHandler: aSymbol
	
	self handlerMapping at: aSymbol ifPresent: [ self error: 'Changing Middleware at runtime is prohibited.' ].
	^ self handlerMapping at: aSymbol ifAbsentPut: aMiddlewareList