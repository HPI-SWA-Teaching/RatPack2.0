test - models
testTestModelValidateIncorrect
	
	"incorrect Json"
	self assert: ([ RPTestModel createObjectFrom: (Dictionary newFrom: {'var' -> 1. 'var2' -> 'green'}). false]
		on: Warning do: [true]).
	