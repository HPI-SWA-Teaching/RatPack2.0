test - routing
testDefaultRouteNameInModel

	| routeName |

	app registerModel: RPTestModelWithRouteName.
	
	routeName := RPApplication apiRoutePrefix, RPTestModelWithRouteName defaultRoute.
	self testDefaultApiRoutesFor: routeName.
	
	routeName := RPApplication htmlRoutePrefix, RPTestModelWithRouteName defaultRoute.
	self testDefaultHtmlRoutesFor: routeName.