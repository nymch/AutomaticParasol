visitor-doubleDispatching
visitExpressionNode: anExpressionNode
	(anExpressionNode isKindOf: PJMethodInvocationNode)
		ifTrue: [ 
			anExpressionNode identifier name = 'findElement'
				ifTrue: [ ^ self visitNodes: anExpressionNode arguments ].
			self processActionForMethodInvocationNode: anExpressionNode ].
	(anExpressionNode isKindOf: PJClassInstanceCreationExpressionNode)
		ifTrue: [ self processActionForClassInstanceCreationExpressionNode: anExpressionNode ]