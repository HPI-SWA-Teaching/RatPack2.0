as yet unclassified
createInstanceFromSymbol: aSymbol

	^ ( self class environment classNamed: aSymbol ) new
	