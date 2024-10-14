Class {
	#name : #GoSignatureNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'params',
		'res'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoSignatureNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSignature: self
]

{ #category : #generated }
GoSignatureNode >> nodeVariables [
	^ #(#params)
]

{ #category : #generated }
GoSignatureNode >> otherVariables [
	^ #(#res)
]

{ #category : #generated }
GoSignatureNode >> params [
	^ params
]

{ #category : #generated }
GoSignatureNode >> params: aGoParametersNode [
	self params notNil ifTrue: [ self params parent: nil ].
	params := aGoParametersNode.
	self params notNil ifTrue: [ self params parent: self ]
]

{ #category : #generated }
GoSignatureNode >> res [
	^ res
]

{ #category : #generated }
GoSignatureNode >> res: anObject [
	self setParent: self res to: nil.
	res := anObject.
	self setParent: self res to: self
]
