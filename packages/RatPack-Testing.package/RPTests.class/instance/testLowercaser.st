test - routing
testLowercaser

	| name |
	name := RPTestModel name asLowercase.
	self assert: ((RPLowercaser new nameRoute: (RPTestModel name)) = name).