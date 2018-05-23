constants
routeNamingStrategies 

	^ OrderedCollection  newFrom: { RPPluralizer new. RPSeparator newWithSeparator: '_'. RPLowercaser new. } 