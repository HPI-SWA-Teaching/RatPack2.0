accessing
headers

	| fullHeaders |
	fullHeaders := self response fields.
	{#status. #contentType. #contentLength. #cookies}
		do: [ :each | fullHeaders at: each put: (self response perform: each) .].
	^ fullHeaders