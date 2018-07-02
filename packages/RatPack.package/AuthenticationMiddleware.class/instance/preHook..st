as yet unclassified
preHook: anEnvironment

	| authHeader splitHeader gameId requestPassword correctPassword |
	
	authHeader := anEnvironment request header at: 'authorization' ifAbsent: ''.
	splitHeader := authHeader findTokens: ':'.
	splitHeader size >= 2 ifTrue: [
		gameId := (authHeader findTokens: ':') at: 1.
		requestPassword := (authHeader findTokens: ':') at: 2.
	].

	correctPassword := '12345'.
	
	(requestPassword = correctPassword) 
		ifFalse: [ 	anEnvironment body: (ReadStream on: '{"error": "401 Unauthorized"}').
						anEnvironment status: 401. ].
	
	^ (requestPassword = correctPassword)