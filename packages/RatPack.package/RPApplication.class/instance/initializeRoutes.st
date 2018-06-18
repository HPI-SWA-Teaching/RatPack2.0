initialize-release
initializeRoutes

	routes := IdentityDictionary new.
	self initializePragmaRoutes.
	self initializeEndpointRoutes. 	
		
	self defaultRoutesModelLookupTable: Dictionary new.
	
	