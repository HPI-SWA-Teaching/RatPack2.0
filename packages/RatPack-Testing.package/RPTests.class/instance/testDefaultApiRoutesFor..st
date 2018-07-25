test - routing
testDefaultApiRoutesFor: aRouteName

	self assert: ((app routes at: #get:) anySatisfy: [ :route | route key = aRouteName]).
	self assert: ((app routes at: #get:) anySatisfy: [ :route | route key = (aRouteName, RPApplication wildcard)]).
	self assert: ((app routes at: #put:) anySatisfy: [ :route | route key = (aRouteName, RPApplication wildcard)]).
	self assert: ((app routes at: #post:) anySatisfy: [ :route | route key = aRouteName]).
	self assert: ((app routes at: #delete:) anySatisfy: [ :route | route key = (aRouteName, RPApplication wildcard)]).