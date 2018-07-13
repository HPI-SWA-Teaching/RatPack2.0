defaults
asHelpTopic

	^ (HelpTopic named: self bookName)
		subtopics: (self packages collect: [:pkgName | PackageAPIHelpTopic new packageName: pkgName]);
		yourself