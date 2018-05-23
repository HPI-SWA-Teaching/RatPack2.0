routing
createRouteSuffixFor: anRPModelClass
	| routeSuffix |
	routeSuffix := anRPModelClass name.
	self class routeNamingStrategies do: [ :strategy | 
		routeSuffix := strategy nameRoute: routeSuffix. ].
	^ routeSuffix