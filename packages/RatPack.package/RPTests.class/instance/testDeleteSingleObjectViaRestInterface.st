test - REST operations
testDeleteSingleObjectViaRestInterface
	
	| url idUrl result headers|
	app database: RPPostgreSQLAdapter new.
	app registerModel: RPTestModel.
	url :=  '/api/routeName'.
	headers := Dictionary newFrom: {'Content-Type' -> 'application/json'}.
	RPTestHelper post: url on: app headers: headers content: RPTestModel fullJson.
	self assert: (app database loadModelObject: 1 from: RPTestModel) notNil.
  
	idUrl := url, '/1'.
	RPTestHelper delete: idUrl on: app.
	result := RPTestHelper get: url on: app.
	self assert: ([app database loadModelObject: 1 from: RPTestModel. false] 
								on: Warning do: [true]).