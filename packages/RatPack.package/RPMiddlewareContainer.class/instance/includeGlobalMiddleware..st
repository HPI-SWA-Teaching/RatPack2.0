private-interaction
includeGlobalMiddleware: aMiddlewareList

	| expandedList indexGlobalKey|

	expandedList := aMiddlewareList copy.
	indexGlobalKey := aMiddlewareList indexOf: #globalMiddleware ifAbsent: [ expandedList add: #globalMiddleware before: 1. indexGlobalKey := 1].
	expandedList := aMiddlewareList copyFrom: 1 to: (indexGlobalKey - 1).
	expandedList addAllLast: self globalMiddleware.
	expandedList addAllLast: (aMiddlewareList copyFrom: indexGlobalKey +1 to: aMiddlewareList size).
	
	^ expandedList 