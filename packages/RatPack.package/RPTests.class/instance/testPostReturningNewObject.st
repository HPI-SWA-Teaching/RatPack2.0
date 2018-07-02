test - REST operations
testPostReturningNewObject
	
	| url urlId testJson postResult getResult headers |
	app registerModel: RPTestModel.
	url := app settings apiRoutePrefix, (RPTestModel defaultRoute).
	testJson := RPTestModel fullJson.
	urlId := url, '/1'.
	headers := Dictionary newFrom: {'Content-Type' -> 'application/json'}.
	postResult := RPTestHelper post: url on: app headers: headers content: testJson.
	getResult := (RPTestHelper get: (urlId) on: app).
	self assert: ((getResult contents contents) = (postResult contents contents)).
	
 	getResult contents contents