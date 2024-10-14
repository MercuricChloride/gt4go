Class {
	#name : #GoTypeNameNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'name'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoTypeNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeName: self
]

{ #category : #generated }
GoTypeNameNode >> name [
	^ name
]

{ #category : #generated }
GoTypeNameNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GoTypeNameNode >> tokenVariables [
	^ #(#name)
]
