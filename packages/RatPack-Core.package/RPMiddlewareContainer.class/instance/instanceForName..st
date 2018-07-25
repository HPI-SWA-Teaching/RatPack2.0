private-accessing
instanceForName: aSymbol

	^ self instances at: aSymbol ifAbsentPut: (self createInstanceFromSymbol: aSymbol)