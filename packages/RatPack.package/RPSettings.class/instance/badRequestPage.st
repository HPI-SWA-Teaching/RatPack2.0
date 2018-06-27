accessing
badRequestPage

	 ^ self getValueFor: #badRequestPage default: [ '<!DOCTYPE html>
<html>
<body>

400 - bad request


</body>
</html>'
]