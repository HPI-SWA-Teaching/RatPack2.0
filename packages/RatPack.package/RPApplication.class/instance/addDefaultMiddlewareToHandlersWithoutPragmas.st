middleware
addDefaultMiddlewareToHandlersWithoutPragmas

	self routes do: [ :handlerList | 
		handlerList do: [ :handler | self middleware at: handler value ifAbsentPut: self class globalMiddleware ].].