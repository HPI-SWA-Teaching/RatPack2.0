test - routing
testDefaultRouteNamingStrategies

	| routeName |

	app registerModel: RPTestModel.
	
	routeName := RPApplication apiRoutePrefix, (RPTestRouteNamingStrategy new nameRoute: RPTestModel name).
	
	self assert: ((app routes at: #get:) anySatisfy: [ :route | route key = routeName]).
	self assert: ((app routes at: #get:) anySatisfy: [ :route | route key = (routeName, RPApplication wildcard)]).
	self assert: ((app routes at: #put:) anySatisfy: [ :route | route key = (routeName, RPApplication wildcard)]).
	self assert: ((app routes at: #post:) anySatisfy: [ :route | route key = routeName]).
	self assert: ((app routes at: #delete:) anySatisfy: [ :route | route key = (routeName, RPApplication wildcard)]).
	
	routeName := RPApplication htmlRoutePrefix, (RPTestRouteNamingStrategy new nameRoute: RPTestModel name).
	
	self assert: ((app routes at: #get:) anySatisfy: [ :route | route key = routeName]).
	self assert: ((app routes at: #get:) anySatisfy: [ :route | route key = (routeName, RPApplication wildcard)]).
	

	