test - routing
testPluralizer

	| pluralizedName |
	
	pluralizedName := RPTestModel name, 's'.
	self assert: ((RPPluralizer new nameRoute: RPTestModel name) = pluralizedName).