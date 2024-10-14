Class {
	#name : #GoTypeNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'name',
		'args'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitType: self
]

{ #category : #generated }
GoTypeNode >> args [
	^ args
]

{ #category : #generated }
GoTypeNode >> args: aGoTypeArgsNode [
	self args notNil ifTrue: [ self args parent: nil ].
	args := aGoTypeArgsNode.
	self args notNil ifTrue: [ self args parent: self ]
]

{ #category : #generated }
GoTypeNode >> name [
	^ name
]

{ #category : #generated }
GoTypeNode >> name: aGoProgramNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aGoProgramNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
GoTypeNode >> nodeVariables [
	^ #(#name #args)
]
