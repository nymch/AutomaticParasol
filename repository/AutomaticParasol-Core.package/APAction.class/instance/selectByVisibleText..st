actions
selectByVisibleText: aString
	^(BPSelect on: (element perform: (element type) with: (element value))) selectByVisibleText: aString.