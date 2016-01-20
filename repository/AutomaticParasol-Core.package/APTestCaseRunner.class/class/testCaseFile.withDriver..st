initialize
testCaseFile: aFilePath withDriver: aDriver
	| runner |
	runner := self new loadTestCaseFile: aFilePath.
	^runner driver: aDriver.