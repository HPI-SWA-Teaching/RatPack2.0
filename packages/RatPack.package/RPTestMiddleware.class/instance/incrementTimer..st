as yet unclassified
incrementTimer: anEnv

	anEnv at: #timer
		ifPresent: [ :timer | anEnv at: #timer put: timer +1]
		ifAbsentPut: [ 1 ].