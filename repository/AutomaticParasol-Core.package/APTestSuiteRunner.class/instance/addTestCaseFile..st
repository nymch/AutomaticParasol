public
addTestCaseFile: aFilePath
	self testCases at: (aFilePath) put: (APTestCaseRunner testCaseFile: aFilePath withDriver: self driver).