initialize-release
initialize

	super initialize.
	
	settings := RPSettings new.
	
	self
		initializeSettings;
		initializeDynamicVariables;
		initializeRoutes;
		initializePragmaMiddleware;
		initializeLogging;
		onRequestDo: [:httpRequest | self processRequest: httpRequest].