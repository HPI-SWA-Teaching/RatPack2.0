test - session middleware
testTokenValidation

	| session env generated expected request|
	session := RPSessionMiddleware new.
	
	request := HttpRequest new.
	request propertyAt: #cookies put: 'authorization=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiSm9obiBEb2UifQ.gUpLaW7ugoRrKP34s49y4t-bEwnB8JJ-z5I-8unJh5c'.
	
	env := RPDynamicEnv new request: request.	
	session preHook: env.
	
	expected := JsonObject newFrom: {'name' -> 'John Doe'}.
	generated := env session.
	
	self assert: expected equals: generated.