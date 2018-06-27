private-accessing
atHandler: aSymbol
	
	| list |
	list := self symbolsForHandler at: aSymbol ifAbsentPut: [ #(#globalMiddleware) asOrderedCollection ].
	^ self includeGlobalMiddleware: list