private
buildAction: anActionSymbol forNode: anExpressionStatementNode
	| actionArgs |
	actionObject := APAction new.
	actionArgs := anExpressionStatementNode expression arguments.
	actionObject type: (self actionIdentifiersDictionary at: anActionSymbol ifAbsent: [ nil ]).
	actionObject value: (actionArgs ifNotEmpty: [ :element | element first literalValue] ifEmpty: [ nil ]).
	self visitNode: anExpressionStatementNode expression object.
	^actionObject