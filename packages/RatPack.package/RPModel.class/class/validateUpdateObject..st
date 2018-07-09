validation
validateUpdateObject: anObject
	| allAttributes givenAttributes |
	allAttributes := self dataTypes keys asOrderedCollection.
	givenAttributes := anObject keys asOrderedCollection.

	^ givenAttributes allSatisfy: [ :each | ((allAttributes indexOf: each) > 0). ]