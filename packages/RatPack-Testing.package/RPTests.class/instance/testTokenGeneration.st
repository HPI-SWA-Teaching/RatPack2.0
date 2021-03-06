test - session middleware
testTokenGeneration

	| session env generated expected|
	session := RPSessionMiddleware new.
	env := RPDynamicEnv new response: HttpResponse new.
		env settings: app settings.
	env session: {'name' -> 'John Doe'} asDictionary.
	session postHook: env.
	
	expected := 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiSm9obiBEb2UifQ.gUpLaW7ugoRrKP34s49y4t-bEwnB8JJ-z5I-8unJh5c'.
	
	generated := ( ( (env cookies) at: 1 ) subStrings: '=') second.
	
	self assert: expected equals: generated.