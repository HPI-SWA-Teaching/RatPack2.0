initialize-release
initializeSettings

	(self settings)
		contentDecoders: (Dictionary newFrom: {'test/contenttype' -> RPMockDecoder});
		globalMiddleware: { #RPTestMiddleware . #RPGlobalHeaderMiddleware } asOrderedCollection;
		routeNamingStrategies:  { RPTestRouteNamingStrategy new } asOrderedCollection.