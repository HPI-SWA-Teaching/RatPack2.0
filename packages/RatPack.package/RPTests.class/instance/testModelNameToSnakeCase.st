test - routing
testModelNameToSnakeCase

	| name route |
	name := 'rp_test_models'.
	route := (RPLowercaser new nameRoute: ((RPSeparator newWithSeparator: '_') nameRoute: (RPPluralizer new nameRoute: (RPTestModel name)))).
	
	self assert: (name = route).