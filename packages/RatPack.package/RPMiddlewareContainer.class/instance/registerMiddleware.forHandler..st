accessing
registerMiddleware: aMiddlewareList forHandler: aSymbol

	^ self handlerMapping at: aSymbol put: aMiddlewareList