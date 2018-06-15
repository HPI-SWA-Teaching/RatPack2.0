test - REST operations
testPost
	
	| url testJson |
	app registerModel: RPTestModel.
	url := app createDefaultRouteFor: RPTestModel withPrefix: (app class apiRoutePrefix).
	testJson := RPTestHelper getExampleJson.
	RPTestHelper post: url on: app content: testJson.
	self assert: (RPTestModel createJsonFor: 
					(app database loadModelObject: 1 from: RPTestModel) object) 
					equals: testJson.
	
	