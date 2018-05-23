model handling
getModelForRoute: aRouteSuffix

	^ self defaultRoutesModelLookupTable at: aRouteSuffix.
