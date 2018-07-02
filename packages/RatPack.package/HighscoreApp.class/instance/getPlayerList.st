handler
getPlayerList

	<get: '/players/'>
	
	| players |
	
	players := self database loadModelObjectsOf: SwaPlayerModel.
	
	self sendHtml: (self est: (self playerListTemplate)).
	


