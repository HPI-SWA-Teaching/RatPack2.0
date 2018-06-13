test - routing
testManySlashes
	
	RPTestHelper get: '/thisDoesNotExist/even/with/many/Slashes' on: app.
	self assert: app response status = #notFound.
	
	RPTestHelper get: '/thisDoesExist/butDoesntTakeArguments/even/with/many/Slashes' on: app.
	self assert: app response status = #ok.