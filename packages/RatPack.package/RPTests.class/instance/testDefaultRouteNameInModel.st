test - routing
testDefaultRouteNameInModel

	| routeName |

	app registerModel: RPTestModel.

	routeName := RPApplication apiRoutePrefix, '(', RPTestModel defaultRoute , ')'.
	self testDefaultApiRoutesFor: routeName.
	
	routeName := RPApplication htmlRoutePrefix, '(', RPTestModel defaultRoute, ')'.
	self testDefaultHtmlRoutesFor: routeName.