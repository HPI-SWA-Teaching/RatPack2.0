interaction
incrementTimer: anEnv

	anEnv at: #time
		ifPresent: [ :time | anEnv at: #time put: time +1]
		ifAbsent: [ anEnv at: #time put: 1 ].