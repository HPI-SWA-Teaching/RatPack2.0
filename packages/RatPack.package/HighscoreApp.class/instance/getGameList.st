handler
getGameList

	<get: '/games/'>
	
	| games |
	
	games := self database loadModelObjectsOf: GameModel.
	
	self sendHtml: (self est: (self gameListTemplate)).
	


