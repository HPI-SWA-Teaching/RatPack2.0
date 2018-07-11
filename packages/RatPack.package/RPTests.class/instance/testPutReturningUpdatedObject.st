test - REST operations
testPutReturningUpdatedObject
	
	| url urlId putResult getResult |
	app registerModel: RPTestModel.
	url := app settings apiRoutePrefix, (RPTestModel defaultRoute).
	
	urlId := url, '/1'.
	RPTestHelper post: url on: app json: RPTestModel fullJson.
	putResult := RPTestHelper put: urlId on: app json: RPTestModel otherFullJson.
	getResult := (RPTestHelper get: (urlId) on: app).
	self assert: ((getResult contents contents) = (putResult contents contents)).