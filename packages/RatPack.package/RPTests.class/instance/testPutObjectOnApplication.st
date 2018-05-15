test - REST operations
testPutObjectOnApplication
	
	| url urlId putResult postResult testJson otherTestJson|
	app registerModel: RPTestModel.
	url := app class apiRoutePrefix, (RPTestModel name).
	testJson := RPTestHelper getExampleJson.
	otherTestJson := RPTestHelper getOtherExampleJson.
	self assert: testJson ~= otherTestJson.
	urlId := url, '/1'.
	postResult := RPTestHelper post: url on: app content: testJson.
	putResult := RPTestHelper put: urlId on: app content: otherTestJson.
		
	self assert: ((postResult contents contents) ~= (putResult contents contents)).
	self assert: ((putResult contents contents) includesSubString: otherTestJson).
	