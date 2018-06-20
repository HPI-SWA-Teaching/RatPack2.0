initialize-release
initializeSettings

	(self settings)
		contentDecoders: (Dictionary newFrom: {
			'test/contenttype' -> RPMockDecoder
		});
		
		globalMiddleware: {
			#RPTestMiddleware .
			#RPGlobalHeaderMiddleware .
			#RPContentParserMiddleware
		} asOrderedCollection;
		
		routeNamingStrategies:  {
			RPTestRouteNamingStrategy new
		} asOrderedCollection.