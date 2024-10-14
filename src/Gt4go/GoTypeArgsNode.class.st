Class {
	#name : #GoTypeArgsNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'typeList'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoTypeArgsNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeArgs: self
]

{ #category : #generated }
GoTypeArgsNode >> nodeVariables [
	^ #(#typeList)
]

{ #category : #generated }
GoTypeArgsNode >> typeList [
	^ typeList
]

{ #category : #generated }
GoTypeArgsNode >> typeList: aGoTypeListNode [
	self typeList notNil ifTrue: [ self typeList parent: nil ].
	typeList := aGoTypeListNode.
	self typeList notNil ifTrue: [ self typeList parent: self ]
]
