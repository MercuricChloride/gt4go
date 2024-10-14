Trait {
	#name : #TProgramVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
TProgramVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]
