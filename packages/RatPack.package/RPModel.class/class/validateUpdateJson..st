validation
validateUpdateJson: aJson
	| allAttributes jsonObject givenAttributes |
	jsonObject := Json readFrom: (ReadStream on: aJson from: 1 to: (aJson size)).
	allAttributes := self dataTypes keys asOrderedCollection.
	givenAttributes := jsonObject keys asOrderedCollection.

	^ givenAttributes allSatisfy: [ :each | ((allAttributes indexOf: each) > 0). ]