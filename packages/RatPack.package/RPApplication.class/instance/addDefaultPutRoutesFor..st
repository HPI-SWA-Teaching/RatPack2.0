model handling
addDefaultPutRoutesFor: anRPModelClass	

	| apiUrl |
	apiUrl := self createDefaultRouteFor: anRPModelClass withPrefix: (self class apiRoutePrefix).
	(self routesFor: #put:) add: ((apiUrl, self class wildcard) -> #writeObjectForPut:id:).
	