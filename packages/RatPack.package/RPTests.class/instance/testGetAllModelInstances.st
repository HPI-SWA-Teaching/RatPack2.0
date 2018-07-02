test - REST operations
testGetAllModelInstances

	| url result testJson testJson2 headers |
	app registerModel: RPTestModel.
	url := '/api/routeName'.
	testJson := RPTestModel fullJson.
	testJson2 := RPTestModel otherFullJson.
	headers := Dictionary newFrom: {'Content-Type' -> 'application/json'}.
	RPTestHelper post: url on: app headers: headers content: testJson.
	RPTestHelper post: url on: app headers: headers content: testJson2.
	result := RPTestHelper get: url on: app.
	self assert: ((result contents contents) includesSubString: (testJson)).
	self assert: ((result contents contents) includesSubString: (testJson2))