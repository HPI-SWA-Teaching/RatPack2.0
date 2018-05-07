test - REST operations
testPostObjectOnApplicationResponse
	
	"| url testJson response |
	app registerModel: RPTestModel.
	url := app class apiRoutePrefix, (RPTestModel name).
	testJson := RPTestHelper getExampleJson.
	response := RPTestHelper post: url on: app content: testJson.
	self assert: (RPTestModel createJsonFor: 
					(app database loadModelObject: 1 from: RPTestModel) object) 
					equals: testJson.
	
	self halt.
	
	self assert: (RPTestModel createJsonFor: 
					(app database loadModelObject: 1 from: RPTestModel) object) 
					equals: response."
	