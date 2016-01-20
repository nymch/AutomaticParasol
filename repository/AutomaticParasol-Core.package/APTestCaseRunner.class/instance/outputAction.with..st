actions
outputAction: actionSymbol with: parameter
	actionSymbol = #click ifTrue: [ ^'element click.' ].
	actionSymbol = #clear ifTrue: [ ^'element clear.' ].
	actionSymbol = #sendKeys ifTrue: [ ^'driver getKeyboard sendKeys: ''', parameter, '''.' ].
	actionSymbol = #selectByVisibleText ifTrue: [ ^'(BPSelect on: element) selectByVisibleText: ''', parameter, '''.' ].
	Transcript show: 'action ', actionSymbol asString ,' not found.'; cr.
	^false.