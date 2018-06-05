as yet unclassified
initialize 

	super initialize.
	
	indexHandlerCalled := false.
	self settings globalHeaders: {'received-when' -> [ TimeStamp new asString. ] . 'global-headers-works' -> 'true' } asDictionary. 