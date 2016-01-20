initialize-release
loadTestCaseFile: aFilePath
	| fileStream fileString |
	fileStream := aFilePath asFileReference readStream.
	fileString := fileStream contents asString.
	self loadTestCase: fileString.