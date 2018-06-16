model handling
addDefaultApiGetRoutesFor: anRPModelClass

	| apiUrl |
	
	apiUrl := self createDefaultRouteFor: anRPModelClass withPrefix: (self class apiRoutePrefix).
	(self routesFor: #get:) add: ((apiUrl, self class wildcard) -> #'writeObjectFromGetRequest:with:').
	(self routesFor: #get:) add: (apiUrl -> #'writeRegisteredObjectsFromGetRequest:').

