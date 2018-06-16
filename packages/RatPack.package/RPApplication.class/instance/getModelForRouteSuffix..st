model handling
getModelForRouteSuffix: aRouteSuffix

	^ self defaultRoutesModelLookupTable at: aRouteSuffix.
