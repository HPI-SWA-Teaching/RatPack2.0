test - REST operations
testPutWithIncompleJson
	
	| url putResult postResult |
	app registerModel: RPTestModel.
	url := app class apiRoutePrefix, (RPTestModel defaultRoute).
	postResult := RPTestHelper post: url on: app content: RPTestHelper getExampleJson.
	putResult := RPTestHelper put: url, '/1' on: app content: RPTestHelper getExampleIncompleteJson..
		
	self assert: ((postResult contents contents) ~= (putResult contents contents)).
	self assert: ((putResult contents contents) includesSubString: '{"salary":42,"name":"Tim Tester"}').
	