as yet unclassified
preHook: anEnv

	| token tokenObject |
	token := anEnv request headerAt: #authorization ifAbsent: [ self createToken. ].
	tokenObject := self parseToken: token.
	self validateTokenObject: tokenObject.
	
	