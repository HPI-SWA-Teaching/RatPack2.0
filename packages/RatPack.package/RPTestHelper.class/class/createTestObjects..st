http requests
createTestObjects: amount

	^ (1 to: amount) collect: [:i | RPTestModel createObject: RPTestModel fullJson.] 