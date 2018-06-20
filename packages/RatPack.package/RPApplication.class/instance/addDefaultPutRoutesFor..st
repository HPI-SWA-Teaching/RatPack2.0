model handling
addDefaultPutRoutesFor: anRPModelClass	

	| apiUrl |
	apiUrl := self createDefaultRouteFor: anRPModelClass withPrefix: (self settings apiRoutePrefix).
	(self routesFor: #put:) add: ((apiUrl, self class wildcard) -> #writeObjectForPut:id:).
	