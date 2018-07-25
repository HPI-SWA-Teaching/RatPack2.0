object handling
writeModelsForGet

	| aJsonString |
	aJsonString := '{"models":[',
		((self modelClasses asOrderedCollection collect: [:each |
      		each structureAsJson]) joinSeparatedBy: ','), ']}'.
      self sendJson: aJsonString