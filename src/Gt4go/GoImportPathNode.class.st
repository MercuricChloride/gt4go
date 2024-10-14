Class {
	#name : #GoImportPathNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'string'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoImportPathNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImportPath: self
]

{ #category : #generated }
GoImportPathNode >> string [
	^ string
]

{ #category : #generated }
GoImportPathNode >> string: aSmaCCToken [
	string := aSmaCCToken
]

{ #category : #generated }
GoImportPathNode >> tokenVariables [
	^ #(#string)
]
