test - routing
testSeparator

	| name sep |
	name := 'RP_Test_Model'.
	sep := RPSeparator newWithSeparator: '_'.
	
	self assert: ((sep nameRoute: (RPTestModel name))= name).
