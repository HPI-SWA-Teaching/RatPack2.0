test - session middleware
testTokenValidation

	| sessionMiddleware env generated expected request|
	sessionMiddleware := RPSessionMiddleware new.
	
	request := HttpRequest new.
	request propertyAt: #cookies put: (request parseCookies: 
	'authorization=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiSm9obiBEb2UifQ.gUpLaW7ugoRrKP34s49y4t-bEwnB8JJ-z5I-8unJh5c').
	
	env := RPDynamicEnv new request: request.
	env settings: app settings.
	sessionMiddleware preHook: env.
	
	expected := JsonObject newFrom: {'name' -> 'John Doe'}.
	generated := env session.
	
	self assert: expected equals: generated.
