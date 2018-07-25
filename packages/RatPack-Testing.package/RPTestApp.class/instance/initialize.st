initialize-release
initialize 

	super initialize.
	
	indexHandlerCalled := false.
	self settings globalHeaders: RPTestHelper getExampleGlobalHeaders.