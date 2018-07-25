as yet unclassified
preHook: anEnvironment

	| authHeader splitHeader username requestPassword correctPassword |
	
	"Split header of type username:password"
	authHeader := anEnvironment request header at: 'authorization' ifAbsent: ''.
	splitHeader := authHeader findTokens: ':'.
	splitHeader size >= 2 ifTrue: [
		username := (authHeader findTokens: ':') at: 1.
		requestPassword := (authHeader findTokens: ':') at: 2.
	].

	correctPassword := '12345'. "You should replace this code with actual authentication code"
	
	(requestPassword = correctPassword) 
		ifFalse: [ 	anEnvironment body: (ReadStream on: '{"error": "401 Unauthorized"}').
						anEnvironment status: 401. ].
	
	^ (requestPassword = correctPassword)