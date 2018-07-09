as yet unclassified
postHook: anEnv
	
	| token |
	token := self createToken: anEnv.
	anEnv addCookies: {'authorization=',token} asCollection.
	
	
	