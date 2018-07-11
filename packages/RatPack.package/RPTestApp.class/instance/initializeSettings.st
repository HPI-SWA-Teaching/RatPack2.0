initialize-release
initializeSettings
	self settings
		contentParsers: (Dictionary newFrom: {'test/contenttype' -> RPMockParser . 'application/json' -> RPJsonContentParser});
		globalMiddleware: {#RPSessionMiddleware . #RPTestMiddleware. #RPGlobalHeaderMiddleware. #RPContentParserMiddleware} asOrderedCollection;
		routeNamingStrategies: {RPTestRouteNamingStrategy new} asOrderedCollection;
		sessionSecret: '12345'.