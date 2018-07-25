validation
validateForCreation: aDictionary
	| allAttributes givenAttributes attributesWithDefault |

	allAttributes := self dataTypes keys asOrderedCollection.
	givenAttributes := aDictionary keys asOrderedCollection.
	attributesWithDefault := self defaultValues keys. 

	^ (givenAttributes, attributesWithDefault) asSet = (allAttributes asSet)