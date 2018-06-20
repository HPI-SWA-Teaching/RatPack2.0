accessing
middleware

	^ middleware ifNil: [ middleware := RPMiddlewareContainer new settings: self settings. ]