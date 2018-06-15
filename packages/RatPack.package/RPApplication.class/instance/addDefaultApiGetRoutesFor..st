model handling
addDefaultApiGetRoutesFor: anRPModelClass

	| apiUrl |
	apiUrl := self class apiRoutePrefix, (anRPModelClass name).
	(self routesFor: #get:) add: ((apiUrl, self class wildcard) -> #writeObjectFromGetRequest:with:).
	(self routesFor: #get:) add: (apiUrl -> #writeRegisteredObjectsFromGetRequest:).