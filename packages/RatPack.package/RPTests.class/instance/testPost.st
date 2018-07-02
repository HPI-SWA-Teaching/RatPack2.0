test - REST operations
testPost
	
	| url testJson headers |
	app registerModel: RPTestModel.
	url :=  '/api/routeName'.
	testJson := RPTestModel fullJson.
	headers := Dictionary newFrom: {'Content-Type' -> 'application/json'}.
	RPTestHelper post: url on: app headers: headers content: testJson.
	self assert: (RPTestModel createJsonFor: 
					(app database loadModelObject: 1 from: RPTestModel) object) 
					equals: testJson.
	
	