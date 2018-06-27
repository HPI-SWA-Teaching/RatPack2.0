test - parsing middleware
testJsonParser
	| object expected |
	
	object := Dictionary newFrom: (RPJsonContentParser parse: '{"a":5,"b":7}').
	expected := Dictionary newFrom: {'a' -> 5. 'b' -> 7}.
	
	self assert: object equals: expected.
	
	object := Array newFrom: (RPJsonContentParser parse: '[5, 7, 8]').
	expected := Array newFrom: {5. 7. 8}.
	
	self assert: object equals: expected.