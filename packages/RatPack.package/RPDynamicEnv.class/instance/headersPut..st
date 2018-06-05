accessing
headersPut: aDictionary
 			
	aDictionary
		at: #status ifPresent: [self response status: (aDictionary at: #status). ];
		at: #contentType ifPresent: [self response contentType: (aDictionary at: #status). ];
		at: #cookies ifPresent: [self response addCookies: (aDictionary at: #status). ];
		associationsDo: [ :association | self headersAt: association key put: association value. ].