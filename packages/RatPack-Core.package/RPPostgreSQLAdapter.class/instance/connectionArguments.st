accessing
connectionArguments

	^ connectionArguments ifNil: [ connectionArguments := PGConnectionArgs
									hostname: 'localhost'
									portno: 5432
									databaseName: 'squeakdb'
									userName: 'postgres'
									password: 'bird']