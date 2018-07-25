routing
createDefaultRouteFor: anRPModelClass withPrefix: aPrefix
	| url routeSuffix |
	
	anRPModelClass overridesDefaultRoute
		ifTrue: [ routeSuffix := anRPModelClass defaultRoute. ]
		ifFalse: [ routeSuffix := self createRouteSuffixFor: anRPModelClass ].
	self defaultRoutesModelLookupTable at: routeSuffix put: anRPModelClass.
	
	url := aPrefix, '(', routeSuffix ,')'.
	^ url
	
	
	
