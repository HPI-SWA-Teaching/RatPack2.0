as yet unclassified
handle: anEnv next: aNext
	
	(self class blacklist includes: anEnv handler)
	ifTrue:[ aNext value. ]
	ifFalse:[	(self preHook: anEnv)
			ifTrue: [ aNext value.
				self postHook: anEnv.]]