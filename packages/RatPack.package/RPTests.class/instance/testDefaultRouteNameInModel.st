test - routing
testDefaultRouteNameInModel

	| routeName |

	app registerModel: RPTestModelWithRouteName.
	
	routeName := RPApplication apiRoutePrefix, RPTestModelWithRouteName defaultRoute.
	
	self assert: ((app routes at: #get:) anySatisfy: [ :route | route key = routeName]).
	self assert: ((app routes at: #get:) anySatisfy: [ :route | route key = (routeName, RPApplication wildcard)]).
	self assert: ((app routes at: #put:) anySatisfy: [ :route | route key = (routeName, RPApplication wildcard)]).
	self assert: ((app routes at: #post:) anySatisfy: [ :route | route key = routeName]).
	self assert: ((app routes at: #delete:) anySatisfy: [ :route | route key = (routeName, RPApplication wildcard)]).
	
	routeName := RPApplication htmlRoutePrefix, RPTestModelWithRouteName defaultRoute.
	
	self assert: ((app routes at: #get:) anySatisfy: [ :route | route key = routeName]).
	self assert: ((app routes at: #get:) anySatisfy: [ :route | route key = (routeName, RPApplication wildcard)]).