processing-actions
processActionForClassInstanceCreationExpressionNode: aClassInstanceCreationExpressionNode
	(aClassInstanceCreationExpressionNode classOrInterfaceType name = 'Select') ifTrue:[
		self visitNode: aClassInstanceCreationExpressionNode argumentList first.
	].