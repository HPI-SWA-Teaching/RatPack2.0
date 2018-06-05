test - routing
testGlobalHeaders
	| result |
	result := RPTestHelper get: '/index' on: app.

	self assert: result status =  #ok.
	self assert: result contentType = 'text/html'.
	self assert: (result fieldAt: 'global-headers-work' ifAbsent:['']) equals: 'true'.
	self assert: (result fieldAt: 'date' ifAbsent:['']) equals: TimeStamp now asString.