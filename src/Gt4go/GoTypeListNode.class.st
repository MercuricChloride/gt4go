Class {
	#name : #GoTypeListNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'types'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoTypeListNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeList: self
]

{ #category : #'generated-initialize-release' }
GoTypeListNode >> initialize [
	super initialize.
	types := OrderedCollection new: 2.
]

{ #category : #generated }
GoTypeListNode >> otherVariables [
	^ #(#types)
]

{ #category : #generated }
GoTypeListNode >> types [
	^ types
]

{ #category : #generated }
GoTypeListNode >> types: anOrderedCollection [
	self setParent: self types to: nil.
	types := anOrderedCollection.
	self setParent: self types to: self
]
