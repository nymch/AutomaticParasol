actions
sendKeys: aString
	element perform: (element type) with: (element value).
	^self driver getKeyboard sendKeys: (aString copyReplaceAll: '"' with: '')