Class {
	#name : #GoImportSpecNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'path',
		'name'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoImportSpecNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImportSpec: self
]

{ #category : #generated }
GoImportSpecNode >> name [
	^ name
]

{ #category : #generated }
GoImportSpecNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GoImportSpecNode >> nodeVariables [
	^ #(#path)
]

{ #category : #generated }
GoImportSpecNode >> path [
	^ path
]

{ #category : #generated }
GoImportSpecNode >> path: aGoImportPathNode [
	self path notNil ifTrue: [ self path parent: nil ].
	path := aGoImportPathNode.
	self path notNil ifTrue: [ self path parent: self ]
]

{ #category : #generated }
GoImportSpecNode >> tokenVariables [
	^ #(#name)
]
