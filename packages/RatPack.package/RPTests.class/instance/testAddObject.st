test - objects
testAddObject
	
	| object |
	app registerModel: RPTestModel.
	object := RPTestModel createObjectFrom: RPTestModel fullObject.
	app database persist: object from: RPTestModel.
	self assert: RPTestModel fullJson 
		 equals: (RPTestModel createJsonFor: (RPTestHelper load: 1 on: app) object).