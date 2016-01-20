public
runAllIn: aDirectoryPath
	| directory files |
	directory := aDirectoryPath asFileReference.
	directory exists
		ifFalse: [ directory := '.' asFileReference ].
		
	files := (directory asFileReference) filesMatching: ('*-WebDriver').
	
	files do:[:testCaseFile |
		self addTestCaseFile: testCaseFile pathString.
		].
	
	self run.