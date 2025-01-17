Class {
	#name : #GoSourceFileNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'package',
		'imports',
		'functionDeclarations',
		'methodDeclarations',
		'idents',
		'names',
		'argses',
		'unaryOps',
		'mulOps',
		'addOps',
		'relOps',
		'typeLists',
		'paramses',
		'reses',
		'tags',
		'params',
		'firsts',
		'nexts',
		'channels',
		'postStmts',
		'initStmts',
		'recvExprs',
		'types'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoSourceFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSourceFile: self
]

{ #category : #generated }
GoSourceFileNode >> addOps [
	^ addOps
]

{ #category : #generated }
GoSourceFileNode >> addOps: anOrderedCollection [
	addOps := anOrderedCollection
]

{ #category : #generated }
GoSourceFileNode >> argses [
	^ argses
]

{ #category : #generated }
GoSourceFileNode >> argses: anOrderedCollection [
	self setParents: self argses to: nil.
	argses := anOrderedCollection.
	self setParents: self argses to: self
]

{ #category : #generated }
GoSourceFileNode >> channels [
	^ channels
]

{ #category : #generated }
GoSourceFileNode >> channels: anOrderedCollection [
	self setParent: self channels to: nil.
	channels := anOrderedCollection.
	self setParent: self channels to: self
]

{ #category : #generated }
GoSourceFileNode >> compositeNodeVariables [
	^ #(#imports #functionDeclarations #methodDeclarations #argses #typeLists #paramses #params)
]

{ #category : #generated }
GoSourceFileNode >> compositeTokenVariables [
	^ #(#idents #unaryOps #mulOps #addOps #relOps #tags #firsts #nexts)
]

{ #category : #generated }
GoSourceFileNode >> firsts [
	^ firsts
]

{ #category : #generated }
GoSourceFileNode >> firsts: anOrderedCollection [
	firsts := anOrderedCollection
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
GoSourceFileNode >> idents [
	^ idents
]

{ #category : #generated }
GoSourceFileNode >> idents: anOrderedCollection [
	idents := anOrderedCollection
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

{ #category : #generated }
GoSourceFileNode >> initStmts [
	^ initStmts
]

{ #category : #generated }
GoSourceFileNode >> initStmts: anOrderedCollection [
	self setParent: self initStmts to: nil.
	initStmts := anOrderedCollection.
	self setParent: self initStmts to: self
]

{ #category : #'generated-initialize-release' }
GoSourceFileNode >> initialize [
	super initialize.
	imports := OrderedCollection new: 2.
	functionDeclarations := OrderedCollection new: 2.
	methodDeclarations := OrderedCollection new: 2.
	idents := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
	argses := OrderedCollection new: 2.
	unaryOps := OrderedCollection new: 2.
	mulOps := OrderedCollection new: 2.
	addOps := OrderedCollection new: 2.
	relOps := OrderedCollection new: 2.
	typeLists := OrderedCollection new: 2.
	paramses := OrderedCollection new: 2.
	reses := OrderedCollection new: 2.
	tags := OrderedCollection new: 2.
	params := OrderedCollection new: 2.
	firsts := OrderedCollection new: 2.
	nexts := OrderedCollection new: 2.
	channels := OrderedCollection new: 2.
	postStmts := OrderedCollection new: 2.
	initStmts := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	recvExprs := OrderedCollection new: 2.
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
GoSourceFileNode >> mulOps [
	^ mulOps
]

{ #category : #generated }
GoSourceFileNode >> mulOps: anOrderedCollection [
	mulOps := anOrderedCollection
]

{ #category : #generated }
GoSourceFileNode >> names [
	^ names
]

{ #category : #generated }
GoSourceFileNode >> names: anOrderedCollection [
	self setParent: self names to: nil.
	names := anOrderedCollection.
	self setParent: self names to: self
]

{ #category : #generated }
GoSourceFileNode >> nexts [
	^ nexts
]

{ #category : #generated }
GoSourceFileNode >> nexts: anOrderedCollection [
	nexts := anOrderedCollection
]

{ #category : #generated }
GoSourceFileNode >> nodeVariables [
	^ #(#package)
]

{ #category : #generated }
GoSourceFileNode >> otherVariables [
	^ #(#names #reses #channels #postStmts #initStmts #types #recvExprs)
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
GoSourceFileNode >> params [
	^ params
]

{ #category : #generated }
GoSourceFileNode >> params: anOrderedCollection [
	self setParents: self params to: nil.
	params := anOrderedCollection.
	self setParents: self params to: self
]

{ #category : #generated }
GoSourceFileNode >> paramses [
	^ paramses
]

{ #category : #generated }
GoSourceFileNode >> paramses: anOrderedCollection [
	self setParents: self paramses to: nil.
	paramses := anOrderedCollection.
	self setParents: self paramses to: self
]

{ #category : #generated }
GoSourceFileNode >> postStmts [
	^ postStmts
]

{ #category : #generated }
GoSourceFileNode >> postStmts: anOrderedCollection [
	self setParent: self postStmts to: nil.
	postStmts := anOrderedCollection.
	self setParent: self postStmts to: self
]

{ #category : #generated }
GoSourceFileNode >> recvExprs [
	^ recvExprs
]

{ #category : #generated }
GoSourceFileNode >> recvExprs: anOrderedCollection [
	self setParent: self recvExprs to: nil.
	recvExprs := anOrderedCollection.
	self setParent: self recvExprs to: self
]

{ #category : #generated }
GoSourceFileNode >> relOps [
	^ relOps
]

{ #category : #generated }
GoSourceFileNode >> relOps: anOrderedCollection [
	relOps := anOrderedCollection
]

{ #category : #generated }
GoSourceFileNode >> reses [
	^ reses
]

{ #category : #generated }
GoSourceFileNode >> reses: anOrderedCollection [
	self setParent: self reses to: nil.
	reses := anOrderedCollection.
	self setParent: self reses to: self
]

{ #category : #generated }
GoSourceFileNode >> tags [
	^ tags
]

{ #category : #generated }
GoSourceFileNode >> tags: anOrderedCollection [
	tags := anOrderedCollection
]

{ #category : #generated }
GoSourceFileNode >> typeLists [
	^ typeLists
]

{ #category : #generated }
GoSourceFileNode >> typeLists: anOrderedCollection [
	self setParents: self typeLists to: nil.
	typeLists := anOrderedCollection.
	self setParents: self typeLists to: self
]

{ #category : #generated }
GoSourceFileNode >> types [
	^ types
]

{ #category : #generated }
GoSourceFileNode >> types: anOrderedCollection [
	self setParent: self types to: nil.
	types := anOrderedCollection.
	self setParent: self types to: self
]

{ #category : #generated }
GoSourceFileNode >> unaryOps [
	^ unaryOps
]

{ #category : #generated }
GoSourceFileNode >> unaryOps: anOrderedCollection [
	unaryOps := anOrderedCollection
]
