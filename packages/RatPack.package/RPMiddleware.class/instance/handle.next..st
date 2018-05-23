as yet unclassified
handle: anEnv next: aNext
	
	(self class blacklist includes: anEnv handler)
	ifTrue:[ aNext value handle: anEnv next: aNext. ]
	ifFalse:[	(self preHook: anEnv)
			ifTrue: [ aNext value handle: anEnv next: aNext.
				self postHook: anEnv.]]