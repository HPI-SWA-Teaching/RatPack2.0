test - REST operations
testPut
	
	| url urlId putResult postResult testJson otherTestJson headers|
	app registerModel: RPTestModel.
	url := app settings apiRoutePrefix, (RPTestModel defaultRoute).
	testJson := RPTestModel fullJson.
	otherTestJson := RPTestModel otherFullJson.
	urlId := url, '/1'.
	headers := Dictionary newFrom: {'Content-Type' -> 'application/json'}.
	postResult := RPTestHelper post: url on: app headers: headers content: testJson.
	putResult := RPTestHelper put: urlId on: app content: otherTestJson.
		
	self assert: ((postResult contents contents) ~= (putResult contents contents)).
	self assert: ((putResult contents contents) includesSubString: otherTestJson).