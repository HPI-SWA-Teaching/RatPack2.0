interaction
preHook: anEnv

	 "Called before handler execution. Return value must understand #ifTrue: or #ifFalse:
	  Return true if you want to continue handling this request.
	  Return false if the handling should be aborted. (Post Hook is not called.)"
	
	^ true