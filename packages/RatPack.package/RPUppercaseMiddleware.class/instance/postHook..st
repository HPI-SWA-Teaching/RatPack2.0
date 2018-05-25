as yet unclassified
postHook: anEnv

	super postHook: anEnv.
	anEnv body: anEnv body asUppercase.

	