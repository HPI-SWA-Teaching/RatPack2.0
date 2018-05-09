test - REST operations
testPutObjectOnApplication
	
	"| url urlId putResult getResult postResult testJson otherTestJson|
	app registerModel: RPTestModel.
	url := app class apiRoutePrefix, (RPTestModel name).
	testJson := RPTestHelper getExampleJson.
	otherTestJson := RPTestHelper getOtherExampleJson.
	urlId := url, '/1'.
	postResult :=RPTestHelper post: url on: app content: testJson.
	
	self assert: postResult status =  #ok.
	self assert: postResult contentType = 'application/json'.
	self assert: ((getResult contents contents) = (putResult contents contents)).
	
	putResult := RPTestHelper put: urlId on: app content: otherTestJson.
	getResult := (RPTestHelper get: (urlId) on: app).
	"
	
	