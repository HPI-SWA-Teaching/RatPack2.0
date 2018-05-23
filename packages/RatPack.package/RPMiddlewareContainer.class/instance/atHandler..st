private-accessing
atHandler: aSymbol
	
	|list expandedList |
	list := self handlerMapping at: aSymbol ifAbsentPut: [ #(#globalMiddleware) asOrderedCollection ].
	^ expandedList := self includeGlobalMiddleware: list.