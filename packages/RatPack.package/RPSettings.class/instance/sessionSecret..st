accessing
sessionSecret: aSecret

	^ self setValue: aSecret for: #sessionSecret requireServerStopped: true