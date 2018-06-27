test - routing
testDefaultRouteNamingStrategies

	| routeName |

	app registerModel: RPTestModelWithoutRouteName.
	
	routeName := app settings apiRoutePrefix, '(', (RPTestRouteNamingStrategy new nameRoute: RPTestModelWithoutRouteName name), ')'.
	self testDefaultApiRoutesFor: routeName.
	
	routeName := app settings htmlRoutePrefix, '(', (RPTestRouteNamingStrategy new nameRoute: RPTestModelWithoutRouteName name), ')'.
	self testDefaultHtmlRoutesFor: routeName.
	

	