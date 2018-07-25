actions
notFound

	self contentType: 'text/html'.
	self status: 404.
	self body: (self est: self settings notFoundPage)