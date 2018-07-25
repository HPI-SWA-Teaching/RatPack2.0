as yet unclassified
newWithSeparator: aSeparator

	| strategy | 
	strategy := RPSeparator new.
	strategy separator: aSeparator.
	
	^ strategy