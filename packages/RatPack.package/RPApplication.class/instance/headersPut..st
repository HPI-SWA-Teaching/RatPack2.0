accessing
headersPut: aDictionary
 
	aDictionary
		keysDo: [:key | ({#status. #contentType. #contentLenght. #cookies}	anySatisfy: [:each | each = key])
				ifTrue: [self response perform: key asMutator withArguments: (aDictionary at: key). ]
				ifFalse: [self response fieldAt: key asString put: (aDictionary at: key). ]. ].