Trait {
	#name : #TGoProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
TGoProgramNodeVisitor >> visitFunctionDecl: aFunctionDecl [
	^ self visitProgram: aFunctionDecl
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitIdentifierList: anIdentifierList [
	^ self visitProgram: anIdentifierList
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
TGoProgramNodeVisitor >> visitParameterDecl: aParameterDecl [
	^ self visitProgram: aParameterDecl
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
TGoProgramNodeVisitor >> visitQualifiedIdent: aQualifiedIdent [
	^ self visitProgram: aQualifiedIdent
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitSignature: aSignature [
	^ self visitProgram: aSignature
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitSourceFile: aSourceFile [
	^ self visitProgram: aSourceFile
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitType: aType [
	^ self visitProgram: aType
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitTypeArgs: aTypeArgs [
	^ self visitProgram: aTypeArgs
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitTypeList: aTypeList [
	^ self visitProgram: aTypeList
]

{ #category : #generated }
TGoProgramNodeVisitor >> visitTypeName: aTypeName [
	^ self visitProgram: aTypeName
]
