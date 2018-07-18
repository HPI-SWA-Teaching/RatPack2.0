handler
getHighscoreListFor: aGameId

	<get: '/highscores/(\d+)/'>
	
	| game scoresSql scoresDict scores comparator |
	game := self database loadModelObject: aGameId asInteger from: GameModel.
	scoresSql := self database executeSQLStatement: 'SELECT * FROM ', ScoreModel tableName, ' WHERE game=', (game metadata at: #id).
	scoresDict := self database transformToCollection: scoresSql.
	scores := scoresDict collect: [:each | (ScoreModel constructModel: each)].
	
	comparator := [ :score1 :score2 | (score1 object score asInteger) > (score2 object score asInteger). ].
	scores := scores sort: comparator.
	
	self sendHtml: (self est: (self highscoreListTemplate)).
	


