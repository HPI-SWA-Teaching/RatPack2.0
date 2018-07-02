test - models
testTestModelValidateJsonCorrect
	
	"correct Json"
	 self assert: ([ RPTestModel createObjectFrom: (Dictionary newFrom: {'salary' ->1. 'name' -> 'green'}). true]
		on: Warning do: [false]).
	
