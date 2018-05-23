routing
route: aHttpRequest 
	| method callChain next index methodRoutes |
	method := aHttpRequest method asLowercase asSymbol asMutator.
	methodRoutes := self routesFor: method.
  	self routeHandler: (self findHandlerFor: aHttpRequest in: methodRoutes) value. 
	
	callChain := self middleware instancesForHandler: self routeHandler.
	callChain add: (RPMiddlewareCallChainHandlerAdapter newWithApplication: self).

	index := 0.
	next := [index := index +1.
			(callChain at: index) handle: self dynamicEnvironment next: next].

	next value.
	
	^ self body