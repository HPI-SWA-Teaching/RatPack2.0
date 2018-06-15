test - routing
testDefaultHtmlRoutesFor: aRouteName

	self assert: ((app routes at: #get:) anySatisfy: [ :route | route key = aRouteName]).
	self assert: ((app routes at: #get:) anySatisfy: [ :route | route key = (aRouteName, RPApplication wildcard)]).