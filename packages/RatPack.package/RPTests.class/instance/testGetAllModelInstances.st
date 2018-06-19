test - REST operations
testGetAllModelInstances

	| url result testJson testJson2 |
	app registerModel: RPTestModel.
	url := app createDefaultRouteFor: RPTestModel withPrefix: (app class apiRoutePrefix).
	testJson := RPTestModel fullJson.
	testJson2 := RPTestModel otherFullJson.
	RPTestHelper post: url on: app content: testJson.
	RPTestHelper post: url on: app content: testJson2.
	result := RPTestHelper get: url on: app.
	self assert: ((result contents contents) includesSubString: (testJson)).
	self assert: ((result contents contents) includesSubString: (testJson2))