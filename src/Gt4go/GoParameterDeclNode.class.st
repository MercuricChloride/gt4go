Class {
	#name : #GoParameterDeclNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'type',
		'identifiers'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoParameterDeclNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitParameterDecl: self
]

{ #category : #generated }
GoParameterDeclNode >> identifiers [
	^ identifiers
]

{ #category : #generated }
GoParameterDeclNode >> identifiers: aGoIdentifierListNode [
	self identifiers notNil ifTrue: [ self identifiers parent: nil ].
	identifiers := aGoIdentifierListNode.
	self identifiers notNil ifTrue: [ self identifiers parent: self ]
]

{ #category : #generated }
GoParameterDeclNode >> nodeVariables [
	^ #(#identifiers)
]

{ #category : #generated }
GoParameterDeclNode >> otherVariables [
	^ #(#type)
]

{ #category : #generated }
GoParameterDeclNode >> type [
	^ type
]

{ #category : #generated }
GoParameterDeclNode >> type: anObject [
	self setParent: self type to: nil.
	type := anObject.
	self setParent: self type to: self
]
