test - REST operations
testPutReturningUpdatedObject
	
	| url urlId putResult getResult headers |
	app registerModel: RPTestModel.
	url := app settings apiRoutePrefix, (RPTestModel defaultRoute).
	
	urlId := url, '/1'.
	headers := Dictionary newFrom: {'Content-Type' -> 'application/json'}.
	RPTestHelper post: url on: app headers: headers content: RPTestModel fullJson.
	putResult := RPTestHelper put: urlId on: app content: RPTestModel otherFullJson.
	getResult := (RPTestHelper get: (urlId) on: app).
	self assert: ((getResult contents contents) = (putResult contents contents)).