Class {
	#name : #GoIdentifierListNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'idents'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoIdentifierListNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIdentifierList: self
]

{ #category : #generated }
GoIdentifierListNode >> compositeTokenVariables [
	^ #(#idents)
]

{ #category : #generated }
GoIdentifierListNode >> idents [
	^ idents
]

{ #category : #generated }
GoIdentifierListNode >> idents: anOrderedCollection [
	idents := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
GoIdentifierListNode >> initialize [
	super initialize.
	idents := OrderedCollection new: 2.
]
