public
run
	self testCases do:[:testCase |
		testCase value run.
		].