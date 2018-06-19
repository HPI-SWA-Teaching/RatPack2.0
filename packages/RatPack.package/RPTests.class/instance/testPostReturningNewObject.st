test - REST operations
testPostReturningNewObject
	
	| url urlId testJson postResult getResult |
	app registerModel: RPTestModel.
	url := app class apiRoutePrefix, (RPTestModel defaultRoute).
	testJson := RPTestModel fullJson.
	urlId := url, '/1'.
	postResult := RPTestHelper post: url on: app content: testJson.
	getResult := (RPTestHelper get: (urlId) on: app).
	self assert: ((getResult contents contents) = (postResult contents contents)).
	
 	getResult contents contents