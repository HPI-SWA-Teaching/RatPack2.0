test - REST operations
testPutWithPartialJson
	
	| url putResult postResult headers |
	app registerModel: RPTestModel.
	url := app settings apiRoutePrefix, (RPTestModel defaultRoute).
	headers := Dictionary newFrom: {'Content-Type' -> 'application/json'}.
	postResult := RPTestHelper post: url on: app headers: headers content: RPTestModel fullJson.
	putResult := RPTestHelper put: url, '/1' on: app content: RPTestModel partialJson.
		
	self assert: ((postResult contents contents) ~= (putResult contents contents)).
	self assert: ((putResult contents contents) includesSubString: '{"salary":42,"name":"Tim Tester"}').
	