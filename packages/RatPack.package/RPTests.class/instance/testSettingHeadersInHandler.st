test - routing
testSettingHeadersInHandler
	| result |
	result := RPTestHelper get: '/setHeaders' on: app.

	self assert: result status =  #ok.
	self assert: result contentType = 'application/json'.
	self assert: (result fieldAt: 'handler-headers-work' ifAbsent:['']) equals: 'true'.