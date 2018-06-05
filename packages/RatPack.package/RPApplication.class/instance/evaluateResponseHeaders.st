headers
evaluateResponseHeaders

	self status: self status value.
	self contentType: self contentType value.
	self cookies do: [:each | self addCookies: each. self cookies remove: each ifAbsent: []. ]. 
	self response fields keysDo: [ :key | self headersAt: key put: (self response fields at: key) value .].