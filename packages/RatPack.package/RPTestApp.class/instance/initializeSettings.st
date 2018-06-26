initialize-release
initializeSettings

	(self settings)
		contentParsers: (Dictionary newFrom: {
			'test/contenttype' -> RPMockParser
		});
		
		globalMiddleware: {
			#RPTestMiddleware .
			#RPGlobalHeaderMiddleware .
			#RPContentParserMiddleware
		} asOrderedCollection;
		
		routeNamingStrategies:  {
			RPTestRouteNamingStrategy new
		} asOrderedCollection.