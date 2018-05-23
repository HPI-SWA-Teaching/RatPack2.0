accessing
middleware

	^ middleware ifNil: [ middleware := RPMiddlewareContainer newWith: self class globalMiddleware andKey: self class globalMiddlewareKey. ]