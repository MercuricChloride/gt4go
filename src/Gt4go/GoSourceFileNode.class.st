Class {
	#name : #GoSourceFileNode,
	#superclass : #AnObsoleteGoProgramNode,
	#instVars : [
		'package',
		'sEMITokens',
		'nEWLINETokens',
		'imports',
		'functionDeclarations',
		'methodDeclarations',
		'declarations'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoSourceFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSourceFile: self
]

{ #category : #generated }
GoSourceFileNode >> compositeNodeVariables [
	^ #(#imports #functionDeclarations #methodDeclarations #declarations)
]

{ #category : #generated }
GoSourceFileNode >> compositeTokenVariables [
	^ #(#sEMITokens #nEWLINETokens)
]

{ #category : #generated }
GoSourceFileNode >> declarations [
	^ declarations
]

{ #category : #generated }
GoSourceFileNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
GoSourceFileNode >> functionDeclarations [
	^ functionDeclarations
]

{ #category : #generated }
GoSourceFileNode >> functionDeclarations: anOrderedCollection [
	self setParents: self functionDeclarations to: nil.
	functionDeclarations := anOrderedCollection.
	self setParents: self functionDeclarations to: self
]

{ #category : #generated }
GoSourceFileNode >> imports [
	^ imports
]

{ #category : #generated }
GoSourceFileNode >> imports: anOrderedCollection [
	self setParents: self imports to: nil.
	imports := anOrderedCollection.
	self setParents: self imports to: self
]

{ #category : #'generated-initialize-release' }
GoSourceFileNode >> initialize [
	super initialize.
	sEMITokens := OrderedCollection new: 2.
	nEWLINETokens := OrderedCollection new: 2.
	imports := OrderedCollection new: 2.
	functionDeclarations := OrderedCollection new: 2.
	methodDeclarations := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
]

{ #category : #generated }
GoSourceFileNode >> methodDeclarations [
	^ methodDeclarations
]

{ #category : #generated }
GoSourceFileNode >> methodDeclarations: anOrderedCollection [
	self setParents: self methodDeclarations to: nil.
	methodDeclarations := anOrderedCollection.
	self setParents: self methodDeclarations to: self
]

{ #category : #generated }
GoSourceFileNode >> nEWLINETokens [
	^ nEWLINETokens
]

{ #category : #generated }
GoSourceFileNode >> nEWLINETokens: anOrderedCollection [
	nEWLINETokens := anOrderedCollection
]

{ #category : #generated }
GoSourceFileNode >> nodeVariables [
	^ #(#package)
]

{ #category : #generated }
GoSourceFileNode >> package [
	^ package
]

{ #category : #generated }
GoSourceFileNode >> package: aGoPackageClauseNode [
	self package notNil ifTrue: [ self package parent: nil ].
	package := aGoPackageClauseNode.
	self package notNil ifTrue: [ self package parent: self ]
]

{ #category : #generated }
GoSourceFileNode >> sEMITokens [
	^ sEMITokens
]

{ #category : #generated }
GoSourceFileNode >> sEMITokens: anOrderedCollection [
	sEMITokens := anOrderedCollection
]
