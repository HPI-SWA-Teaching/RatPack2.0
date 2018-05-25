routing
route: aHttpRequest 
	| callChain next index env |
	env := self dynamicEnvironment.
	self setRouteHandlerFor: aHttpRequest.
	callChain := self createCallChain.
	
	index := 0.
	next := [index := index +1.
			(callChain at: index) handle: self dynamicEnvironment next: next].
	
	next value.
	index := self dynamicEnvironment.