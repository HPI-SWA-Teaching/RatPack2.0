test - REST operations
testPostObjectOnApplicationResponse
	
	| url urlId testJson postResult getResult |
	app registerModel: RPTestModel.
	url := app class apiRoutePrefix, (RPTestModel name).
	testJson := RPTestHelper getExampleJson.
	urlId := url, '/1'.
	postResult := RPTestHelper post: url on: app content: testJson.
	getResult := (RPTestHelper get: (urlId) on: app).
	self assert: postResult status =  #ok.
	
	self assert: postResult contentType = 'application/json'.
	self assert: ((getResult contents contents) = (postResult contents contents)).
	