initialize-release
loadTestCase: anString
	| jp pv cb md an visitor |
	self testActions: OrderedCollection new.
	jp := PPJavaParser new.
	pv := jp parse: anString.
	visitor := APVisitor new.
	cb := pv typeDeclarations first classOrInterfaceDeclaration typeDeclaration classBody.
	md := cb select: [ :element | element isKindOf: PJMethodDeclarationNode ].
	self
		baseUrl:
			(((md detect: [ :elem | elem modifiers first typeName identifier name = 'Before' ]) body statements
				select: [ :elem | elem expression isKindOf: PJInfixOperationNode ])
				detect: [ :elem | elem expression left identifier first name = 'baseUrl' ]
				ifNone: [ nil ]) expression right literalValue.
	an := md select: [ :element | element modifiers first isKindOf: PJAnnotationNode ].
	self baseUrl ifNil:[^Transcript show: 'Can''t get BaseUrl from file.'].
	visitor visitNode: an second body.
	self testActions: (visitor testActions).