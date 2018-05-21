routing
route: aHttpRequest 
	| method handlers match next index methodRoutes |
	method := aHttpRequest method asLowercase asSymbol asMutator.
	methodRoutes := self routesFor: method.
	match := self findHandlerFor: aHttpRequest in: methodRoutes.
	
	handlers := self middleware at: (match value).
	handlers add: #handlerDecorator:next: .
	handlers add: match value.
	index := 0.
	next := [index := index +1.
			(handlers at: index) handle: self dynamicEnvironment next: next].
	self halt.
	next value.