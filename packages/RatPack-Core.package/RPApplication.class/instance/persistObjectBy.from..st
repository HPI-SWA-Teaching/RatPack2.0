object handling
persistObjectBy: aDictionary from: aRPModelClass

	^ self database persist: (aRPModelClass createObjectFrom: aDictionary) from: aRPModelClass