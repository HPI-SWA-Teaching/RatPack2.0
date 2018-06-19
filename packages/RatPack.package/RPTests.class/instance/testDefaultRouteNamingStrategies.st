test - routing
testDefaultRouteNamingStrategies

	| routeName |

	app registerModel: RPTestModelWithoutRouteName.
	
	routeName := RPApplication apiRoutePrefix, '(', (RPTestRouteNamingStrategy new nameRoute: RPTestModelWithoutRouteName name), ')'.
	self testDefaultApiRoutesFor: routeName.
	
	routeName := RPApplication htmlRoutePrefix, '(', (RPTestRouteNamingStrategy new nameRoute: RPTestModelWithoutRouteName name), ')'.
	self testDefaultHtmlRoutesFor: routeName.
	

	