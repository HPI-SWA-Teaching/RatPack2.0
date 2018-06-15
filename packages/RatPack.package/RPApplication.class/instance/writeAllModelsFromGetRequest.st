object handling
writeAllModelsFromGetRequest

	| aJsonString |
	aJsonString := '{"models":[',
		((self modelClasses asOrderedCollection collect: [:each |
      		each structureAsJson]) joinSeparatedBy: ','), ']}'.
      self sendJson: aJsonString