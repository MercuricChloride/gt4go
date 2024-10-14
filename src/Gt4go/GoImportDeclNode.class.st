Class {
	#name : #GoImportDeclNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'imports'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoImportDeclNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImportDecl: self
]

{ #category : #generated }
GoImportDeclNode >> compositeNodeVariables [
	^ #(#imports)
]

{ #category : #generated }
GoImportDeclNode >> imports [
	^ imports
]

{ #category : #generated }
GoImportDeclNode >> imports: anOrderedCollection [
	self setParents: self imports to: nil.
	imports := anOrderedCollection.
	self setParents: self imports to: self
]

{ #category : #'generated-initialize-release' }
GoImportDeclNode >> initialize [
	super initialize.
	imports := OrderedCollection new: 2.
]
