accessing
headersAt: aKey put:	aValue
	
	|dictionary |
	dictionary := Dictionary new.
	dictionary at: aKey put: aValue.
	self headersPut: dictionary.
