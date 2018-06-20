routing
createRouteSuffixFor: anRPModelClass
	| routeSuffix |
	routeSuffix := anRPModelClass name.
	self settings routeNamingStrategies do: [ :strategy | 
		routeSuffix := strategy nameRoute: routeSuffix. ].
	^ routeSuffix