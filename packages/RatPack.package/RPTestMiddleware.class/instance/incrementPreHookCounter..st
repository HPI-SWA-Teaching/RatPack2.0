interaction
incrementPreHookCounter: anEnv

	anEnv at: #preHookCounter 
		ifPresent: [ :counter | anEnv at: #preHookCounter put: counter +1. ]
		ifAbsent: [ anEnv at: #preHookCounter put: 1 ].