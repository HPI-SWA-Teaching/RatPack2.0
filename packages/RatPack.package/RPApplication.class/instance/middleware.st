accessing
middleware

	^ middleware ifNil: [ middleware := RPMiddlewareContainer newWithGlobalSymbols: self settings globalMiddleware andKey: self settings globalMiddlewareKey andSettings: self settings. ]