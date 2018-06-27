accessing
routeNamingStrategies 

	^ self getValueFor: #routeNamingStrategies default: [ { RPSeparator newWithSeparator: '_'. RPLowercaser new. } asOrderedCollection ]