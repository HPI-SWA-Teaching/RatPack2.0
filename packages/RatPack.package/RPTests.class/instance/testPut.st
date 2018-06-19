test - REST operations
testPut
	
	| url urlId putResult postResult testJson otherTestJson|
	app registerModel: RPTestModel.
	url := app class apiRoutePrefix, (RPTestModel defaultRoute).
	testJson := RPTestModel fullJson.
	otherTestJson := RPTestModel otherFullJson.
	urlId := url, '/1'.
	postResult := RPTestHelper post: url on: app content: testJson.
	putResult := RPTestHelper put: urlId on: app content: otherTestJson.
		
	self assert: ((postResult contents contents) ~= (putResult contents contents)).
	self assert: ((putResult contents contents) includesSubString: otherTestJson).