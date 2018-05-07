object handling
postFromRequest: aRPModelname
	
	| jsonString aRPModelClass responseId test |
	aRPModelClass := self getRegisteredModel: aRPModelname.
	jsonString := self request rawPostContents.
	responseId := self persistObjectBy: jsonString from: aRPModelClass.
	
	self halt.
	
	"test sollte richtigen JSON zurückgeben -> richtigen GET Befehl finden"
	test := self getObjectFromRequest: aRPModelname with: responseId.
	
	self halt.
	
	^ test
