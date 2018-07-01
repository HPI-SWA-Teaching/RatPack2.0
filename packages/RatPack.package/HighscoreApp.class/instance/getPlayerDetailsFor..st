as yet unclassified
getPlayerDetailsFor: aPlayerId

	<get: '/players/(\d+)/'>
	
	| player scoresSql scoresDict scores comparator |
	
	player := self database loadModelObject: aPlayerId asInteger from: SwaPlayerModel.
	scoresSql := self database executeSQLStatement: 'SELECT * FROM ', ScoreModel tableName, ' WHERE player=', (player metadata at: #id).
	scoresDict := self database transformToCollection: scoresSql.
	scores := scoresDict collect: [:each | (ScoreModel constructModel: each)].
	
	comparator := [ :score1 :score2 | (score1 object score) > (score2 object score). ].
	scores := scores sort: comparator.
	
	self sendHtml: (self est: (self playerDetailsTemplate )).
	


