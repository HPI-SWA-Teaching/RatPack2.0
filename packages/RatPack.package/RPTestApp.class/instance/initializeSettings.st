initialize-release
initializeSettings
	self settings
		contentParsers: (Dictionary newFrom: {'test/contenttype' -> RPMockParser . 'application/json' -> RPJsonContentParser});
		globalMiddleware: {#RPTestMiddleware. #RPGlobalHeaderMiddleware. #RPContentParserMiddleware} asOrderedCollection;
		routeNamingStrategies: {RPTestRouteNamingStrategy new} asOrderedCollection