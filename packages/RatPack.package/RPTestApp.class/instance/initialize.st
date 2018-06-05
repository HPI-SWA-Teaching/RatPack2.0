as yet unclassified
initialize 

	super initialize.
	
	indexHandlerCalled := false.
	self settings globalHeaders: {'date' -> [ TimeStamp now asString. ] . 'global-headers-work' -> 'true' } asDictionary.