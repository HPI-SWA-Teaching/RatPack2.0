accessing
preHook: anEnv

	| token |

	anEnv session: JsonObject new.
	token := (anEnv request cookies) at: #authorization ifAbsent: [ ^ true ].
	(self validateToken: token withEnv: anEnv) ifFalse: [ ^ true ].
	[ anEnv session: (self tokenPayload: token). ] on: Error do: [ ^ true ].
	
	