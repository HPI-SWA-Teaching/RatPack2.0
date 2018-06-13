interaction
incrementPostHookCounter: anEnv

	anEnv at: #postHookCounter 
		ifPresent: [ :counter | anEnv at: #postHookCounter put: counter +1. ]
		ifAbsent: [ anEnv at: #postHookCounter put: 1 ].