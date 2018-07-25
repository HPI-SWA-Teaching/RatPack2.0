initialization
initializeSettings
	self settings
		globalMiddleware: {#AuthenticationMiddleware } asOrderedCollection.