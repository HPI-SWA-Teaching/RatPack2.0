test - routing
testCaptureGroups
	
	RPTestHelper get: '/captureGroups/number/123456789/word/Test' on: app.
	self assert: (app dynamicEnvironment at: #number) equals: 123456789.
	self assert: (app dynamicEnvironment at: #word) equals: 'Test'.