processing-actions
processActionForMethodInvocationNode: aMethodInvocationNode

	| element |
	element := APFindElementAction new.
	element type: (self findElementIdentifiersDictionary at: (aMethodInvocationNode identifier name asSymbol) ifAbsent: nil); value: (aMethodInvocationNode arguments first literalValue).
	self addElement: element ForAction: actionObject.