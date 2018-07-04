interaction
assertedPreHookResult: aPreHookResult

	((aPreHookResult respondsTo: #ifTrue:)  or: (aPreHookResult respondsTo: #ifFalse:))
		ifTrue: 	[ ^ aPreHookResult ]
		ifFalse: 	[ self error: 'preHook of: ' , self name , ' has to return true or false.' ]