test - REST operations
testPost
	
	| url testJson |
	app registerModel: RPTestModel.
	url :=  '/api/routeName'.
	testJson := RPTestModel fullJson.
	RPTestHelper post: url on: app content: testJson.
	self assert: (RPTestModel createJsonFor: 
					(app database loadModelObject: 1 from: RPTestModel) object) 
					equals: testJson.
	
	