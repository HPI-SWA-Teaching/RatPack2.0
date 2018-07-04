test - models
testTestModelCreateSpecifiedObject

	|  object |
	object := RPTestModel createObjectFrom: (Dictionary newFrom: {'name' -> 'Andreas Anders'}).
	self assert: 1 equals:  (object instVarNamed: 'salary').
	self assert:  'Andreas Anders' equals: (object instVarNamed: 'name') .