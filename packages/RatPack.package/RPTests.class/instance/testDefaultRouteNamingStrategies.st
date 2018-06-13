test - routing
testDefaultRouteNamingStrategies

	| routeName |

	app registerModel: RPTestModel.
	
	routeName := RPApplication apiRoutePrefix, (RPTestRouteNamingStrategy new nameRoute: RPTestModel name).
	self testDefaultApiRoutesFor: routeName.
	
	routeName := RPApplication htmlRoutePrefix, (RPTestRouteNamingStrategy new nameRoute: RPTestModel name).
	self testDefaultHtmlRoutesFor: routeName.
	

	