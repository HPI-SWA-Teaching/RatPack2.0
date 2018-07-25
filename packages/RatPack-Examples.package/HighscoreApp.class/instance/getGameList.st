handler
getGameList

	"Using pragmas, you can define routes for your application"
	<get: '/games/'>
	
	| games |
	
	games := self database loadModelObjectsOf: GameModel.
	
	self sendHtml: (self est: (self gameListTemplate)).
	


