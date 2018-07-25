test - parsing middleware
testStrictCorrectContentParsing
	
	app settings forceCorrectContentDecoding: true.
	
	RPTestHelper put: '/index' on: app headers: (Dictionary newFrom: {'Content-Type' -> 'test/contenttype'}) content: ''.
	self assert: (app parsedRequestContents) equals: (RPMockParser fixedAnswer).
	self assert: app indexHandlerCalled equals: true.
	
	app parsedRequestContents: nil.

	RPTestHelper post: '/index' on: app headers: (Dictionary newFrom: {'Content-Type' -> 'test/contenttype'}) content: ''.
	self assert: app indexHandlerCalled equals: true.
	self assert: (app parsedRequestContents) equals: (RPMockParser fixedAnswer).