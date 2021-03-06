test - REST operations
testPutWithPartialJson
	
	| url putResult postResult |
	app registerModel: RPTestModel.
	url := app settings apiRoutePrefix, (RPTestModel defaultRoute).
	postResult := RPTestHelper post: url on: app json: RPTestModel fullJson.
	putResult := RPTestHelper put: url, '/1' on: app json: RPTestModel partialJson.
		
	self assert: ((postResult contents contents) ~= (putResult contents contents)).
	self assert: ((putResult contents contents) includesSubString: '{"salary":42,"name":"Tim Tester"}').
	