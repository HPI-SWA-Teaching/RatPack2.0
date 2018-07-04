interaction
assertedPreHookResult: aPreHookResult

	(aPreHookResult == true or: aPreHookResult == false)
		ifTrue: 	[ ^ aPreHookResult ]
		ifFalse: 	[ self error: 'preHook of: ' , self name , ' has to return true or false. True: process execution. False: Abort Execution.' ]