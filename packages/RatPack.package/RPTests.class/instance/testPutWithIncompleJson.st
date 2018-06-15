test - REST operations
testPutWithIncompleJson
	
	| url urlId putResult postResult testJson incompleteTestJson resultTestJson |
	app registerModel: RPTestModel.
	url := app class apiRoutePrefix, (RPTestModel defaultRoute).
	testJson := RPTestHelper getExampleJson.
	incompleteTestJson := RPTestHelper getExampleIncompleteJson.
	resultTestJson := '{"salary":42,"name":"Tim Tester"}'.
	urlId := url, '/1'.
	postResult := RPTestHelper post: url on: app content: testJson.
	putResult := RPTestHelper put: urlId on: app content: incompleteTestJson.
		
	self assert: ((postResult contents contents) ~= (putResult contents contents)).
	self assert: ((putResult contents contents) includesSubString: resultTestJson).
	