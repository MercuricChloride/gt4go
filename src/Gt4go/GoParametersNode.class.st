Class {
	#name : #GoParametersNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'params'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoParametersNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitParameters: self
]

{ #category : #generated }
GoParametersNode >> compositeNodeVariables [
	^ #(#params)
]

{ #category : #'generated-initialize-release' }
GoParametersNode >> initialize [
	super initialize.
	params := OrderedCollection new: 2.
]

{ #category : #generated }
GoParametersNode >> params [
	^ params
]

{ #category : #generated }
GoParametersNode >> params: anOrderedCollection [
	self setParents: self params to: nil.
	params := anOrderedCollection.
	self setParents: self params to: self
]
