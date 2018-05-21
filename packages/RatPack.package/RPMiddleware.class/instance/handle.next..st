as yet unclassified
handle: anEnv next: aNext

	(self preHook: anEnv)
		ifTrue: [ aNext value handle: anEnv next: aNext.
				self postHook: anEnv.]