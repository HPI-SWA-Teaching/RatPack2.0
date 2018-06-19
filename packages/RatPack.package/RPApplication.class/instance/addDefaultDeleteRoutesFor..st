model handling
addDefaultDeleteRoutesFor: anRPModelClass

	| apiUrl |
	apiUrl := self createDefaultRouteFor: anRPModelClass withPrefix: (self class apiRoutePrefix).
	(self routesFor: #delete:) add: ((apiUrl , self class wildcard) -> #writeDeletedObject:id:).