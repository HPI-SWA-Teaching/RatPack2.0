model handling
addDefaultDeleteRoutesFor: anRPModelClass

	| apiUrl |
	apiUrl := self createDefaultRouteFor: anRPModelClass withPrefix: (self settings apiRoutePrefix).
	(self routesFor: #delete:) add: ((apiUrl , self class wildcard) -> #writeRemovedObjectForDelete:id:).