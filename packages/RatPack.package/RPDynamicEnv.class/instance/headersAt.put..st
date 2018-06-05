accessing
headersAt: aKey put:	aValueOrBlock

	self response fieldAt: aKey put: (aValueOrBlock value).