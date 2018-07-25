accessing-default
handle: anEnv next: aNext
	
	(self isUrlBlacklisted: anEnv request url)
		ifTrue: [ ^ aNext value ].
		
	(self assertedPreHookResult: (self preHook: anEnv))
		ifTrue: [ aNext value.
				 self postHook: anEnv. ].
			