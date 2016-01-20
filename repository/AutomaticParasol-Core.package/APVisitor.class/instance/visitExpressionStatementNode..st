visitor-doubleDispatching
visitExpressionStatementNode: anExpressionStatementNode
	| actionSymbol |
	actionSymbol := anExpressionStatementNode expression identifier name asSymbol.
	actionSymbol = #get ifTrue:[^self].
	actionObject := self buildAction: actionSymbol forNode: anExpressionStatementNode.
	self testActions add: actionObject.
"	^APAction new element: (self visitNode: anExpressionStatementNode expression object)."
"	detectedSymbol := self actionIdentifiers
		detect: [ :actionId | actionId = anExpressionStatementNode expression identifier name asSymbol ]
		ifNone: [ nil ].
	detectedSymbol
		ifNotNil: [ 
			actionArgs := anExpressionStatementNode expression arguments.
			actionNode := APAction new.
			actionNode
				type: detectedSymbol;
				value: (actionArgs ifNotEmpty: [ :element | element first literalValue ] ifEmpty: [ nil ]).
			self visitNode: anExpressionStatementNode expression object.
			testCases add: actionNode ]"