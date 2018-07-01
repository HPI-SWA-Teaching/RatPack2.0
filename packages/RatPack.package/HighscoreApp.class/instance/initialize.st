as yet unclassified
initialize 

	super initialize.
	self database: RPPostgreSQLAdapter new.
	self registerModel: SwaPlayerModel.
	self registerModel: GameModel.
	self registerModel: ScoreModel.