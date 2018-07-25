pages
page0

	^HelpTopic
		title: '0. Baseline Setup Command'
		contents: 
'Baseline Setup Command

To propperly setup the baseline for RatPack use this in your Workspace 

	Metacello new
		repository: ''github://hpi-swa-teaching/RatPack2.0:develop/packages'';
		baseline: ''RatPack'';
		load' 