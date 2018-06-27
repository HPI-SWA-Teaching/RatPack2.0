test - routing
testDefaultRouteNameInModel

	| routeName |

	app registerModel: RPTestModel.

	routeName := app settings apiRoutePrefix, '(', RPTestModel defaultRoute , ')'.
	self testDefaultApiRoutesFor: routeName.
	
	routeName := app settings htmlRoutePrefix, '(', RPTestModel defaultRoute, ')'.
	self testDefaultHtmlRoutesFor: routeName.