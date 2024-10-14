Trait {
	#name : #TGoProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
TGoProgramNodeVisitor >> visitDeclaration: aDeclaration [
	^ self visitProgram: aDeclaration
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitFunctionDecl: aFunctionDecl [
	^ self visitProgram: aFunctionDecl
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitImportDecl: anImportDecl [
	^ self visitProgram: anImportDecl
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitImportPath: anImportPath [
	^ self visitProgram: anImportPath
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitImportSpec: anImportSpec [
	^ self visitProgram: anImportSpec
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitMethodDecl: aMethodDecl [
	^ self visitProgram: aMethodDecl
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitPackageClause: aPackageClause [
	^ self visitProgram: aPackageClause
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitParameters: aParameters [
	^ self visitProgram: aParameters
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitSignature: aSignature [
	^ self visitProgram: aSignature
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitSourceFile: aSourceFile [
	^ self visitProgram: aSourceFile
]
