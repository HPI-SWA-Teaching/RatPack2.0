test - models
testTestModelCreateDefaultObject
	
	|  object |
	object := RPTestModel createObjectFrom: Dictionary new.
	self assert: 1 equals:  (object instVarNamed: 'salary').
	self assert:  'Max Mustermann' equals: (object instVarNamed: 'name') .