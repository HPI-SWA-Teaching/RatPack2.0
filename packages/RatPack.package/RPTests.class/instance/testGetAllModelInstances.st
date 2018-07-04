test - REST operations
testGetAllModelInstances

	| url result testJson testJson2 |
	app registerModel: RPTestModel.
	url := '/api/routeName'.
	testJson := RPTestModel fullJson.
	testJson2 := RPTestModel otherFullJson.
	RPTestHelper post: url on: app json: testJson.
	RPTestHelper post: url on: app json: testJson2.
	result := RPTestHelper get: url on: app.
	self assert: ((result contents contents) includesSubString: (testJson)).
	self assert: ((result contents contents) includesSubString: (testJson2))