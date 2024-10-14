Class {
	#name : #GoMethodDeclNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'receiver',
		'names',
		'signature',
		'idents',
		'argses',
		'typeLists',
		'paramses',
		'reses',
		'unaryOps',
		'mulOps',
		'addOps',
		'relOps',
		'tags',
		'params',
		'channels',
		'postStmts',
		'initStmts',
		'types',
		'recvExprs',
		'firsts',
		'nexts'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoMethodDeclNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMethodDecl: self
]

{ #category : #generated }
GoMethodDeclNode >> addOps [
	^ addOps
]

{ #category : #generated }
GoMethodDeclNode >> addOps: anOrderedCollection [
	addOps := anOrderedCollection
]

{ #category : #generated }
GoMethodDeclNode >> argses [
	^ argses
]

{ #category : #generated }
GoMethodDeclNode >> argses: anOrderedCollection [
	self setParents: self argses to: nil.
	argses := anOrderedCollection.
	self setParents: self argses to: self
]

{ #category : #generated }
GoMethodDeclNode >> channels [
	^ channels
]

{ #category : #generated }
GoMethodDeclNode >> channels: anOrderedCollection [
	self setParent: self channels to: nil.
	channels := anOrderedCollection.
	self setParent: self channels to: self
]

{ #category : #generated }
GoMethodDeclNode >> compositeNodeVariables [
	^ #(#argses #typeLists #paramses #params)
]

{ #category : #generated }
GoMethodDeclNode >> compositeTokenVariables [
	^ #(#idents #unaryOps #mulOps #addOps #relOps #tags #firsts #nexts)
]

{ #category : #generated }
GoMethodDeclNode >> firsts [
	^ firsts
]

{ #category : #generated }
GoMethodDeclNode >> firsts: anOrderedCollection [
	firsts := anOrderedCollection
]

{ #category : #generated }
GoMethodDeclNode >> idents [
	^ idents
]

{ #category : #generated }
GoMethodDeclNode >> idents: anOrderedCollection [
	idents := anOrderedCollection
]

{ #category : #generated }
GoMethodDeclNode >> initStmts [
	^ initStmts
]

{ #category : #generated }
GoMethodDeclNode >> initStmts: anOrderedCollection [
	self setParent: self initStmts to: nil.
	initStmts := anOrderedCollection.
	self setParent: self initStmts to: self
]

{ #category : #'generated-initialize-release' }
GoMethodDeclNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	idents := OrderedCollection new: 2.
	argses := OrderedCollection new: 2.
	typeLists := OrderedCollection new: 2.
	paramses := OrderedCollection new: 2.
	reses := OrderedCollection new: 2.
	unaryOps := OrderedCollection new: 2.
	mulOps := OrderedCollection new: 2.
	addOps := OrderedCollection new: 2.
	relOps := OrderedCollection new: 2.
	tags := OrderedCollection new: 2.
	params := OrderedCollection new: 2.
	channels := OrderedCollection new: 2.
	postStmts := OrderedCollection new: 2.
	initStmts := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	recvExprs := OrderedCollection new: 2.
	firsts := OrderedCollection new: 2.
	nexts := OrderedCollection new: 2.
]

{ #category : #generated }
GoMethodDeclNode >> mulOps [
	^ mulOps
]

{ #category : #generated }
GoMethodDeclNode >> mulOps: anOrderedCollection [
	mulOps := anOrderedCollection
]

{ #category : #generated }
GoMethodDeclNode >> names [
	^ names
]

{ #category : #generated }
GoMethodDeclNode >> names: anOrderedCollection [
	self setParent: self names to: nil.
	names := anOrderedCollection.
	self setParent: self names to: self
]

{ #category : #generated }
GoMethodDeclNode >> nexts [
	^ nexts
]

{ #category : #generated }
GoMethodDeclNode >> nexts: anOrderedCollection [
	nexts := anOrderedCollection
]

{ #category : #generated }
GoMethodDeclNode >> nodeVariables [
	^ #(#receiver #signature)
]

{ #category : #generated }
GoMethodDeclNode >> otherVariables [
	^ #(#names #reses #channels #postStmts #initStmts #types #recvExprs)
]

{ #category : #generated }
GoMethodDeclNode >> params [
	^ params
]

{ #category : #generated }
GoMethodDeclNode >> params: anOrderedCollection [
	self setParents: self params to: nil.
	params := anOrderedCollection.
	self setParents: self params to: self
]

{ #category : #generated }
GoMethodDeclNode >> paramses [
	^ paramses
]

{ #category : #generated }
GoMethodDeclNode >> paramses: anOrderedCollection [
	self setParents: self paramses to: nil.
	paramses := anOrderedCollection.
	self setParents: self paramses to: self
]

{ #category : #generated }
GoMethodDeclNode >> postStmts [
	^ postStmts
]

{ #category : #generated }
GoMethodDeclNode >> postStmts: anOrderedCollection [
	self setParent: self postStmts to: nil.
	postStmts := anOrderedCollection.
	self setParent: self postStmts to: self
]

{ #category : #generated }
GoMethodDeclNode >> receiver [
	^ receiver
]

{ #category : #generated }
GoMethodDeclNode >> receiver: aGoParametersNode [
	self receiver notNil ifTrue: [ self receiver parent: nil ].
	receiver := aGoParametersNode.
	self receiver notNil ifTrue: [ self receiver parent: self ]
]

{ #category : #generated }
GoMethodDeclNode >> recvExprs [
	^ recvExprs
]

{ #category : #generated }
GoMethodDeclNode >> recvExprs: anOrderedCollection [
	self setParent: self recvExprs to: nil.
	recvExprs := anOrderedCollection.
	self setParent: self recvExprs to: self
]

{ #category : #generated }
GoMethodDeclNode >> relOps [
	^ relOps
]

{ #category : #generated }
GoMethodDeclNode >> relOps: anOrderedCollection [
	relOps := anOrderedCollection
]

{ #category : #generated }
GoMethodDeclNode >> reses [
	^ reses
]

{ #category : #generated }
GoMethodDeclNode >> reses: anOrderedCollection [
	self setParent: self reses to: nil.
	reses := anOrderedCollection.
	self setParent: self reses to: self
]

{ #category : #generated }
GoMethodDeclNode >> signature [
	^ signature
]

{ #category : #generated }
GoMethodDeclNode >> signature: aGoSignatureNode [
	self signature notNil ifTrue: [ self signature parent: nil ].
	signature := aGoSignatureNode.
	self signature notNil ifTrue: [ self signature parent: self ]
]

{ #category : #generated }
GoMethodDeclNode >> tags [
	^ tags
]

{ #category : #generated }
GoMethodDeclNode >> tags: anOrderedCollection [
	tags := anOrderedCollection
]

{ #category : #generated }
GoMethodDeclNode >> typeLists [
	^ typeLists
]

{ #category : #generated }
GoMethodDeclNode >> typeLists: anOrderedCollection [
	self setParents: self typeLists to: nil.
	typeLists := anOrderedCollection.
	self setParents: self typeLists to: self
]

{ #category : #generated }
GoMethodDeclNode >> types [
	^ types
]

{ #category : #generated }
GoMethodDeclNode >> types: anOrderedCollection [
	self setParent: self types to: nil.
	types := anOrderedCollection.
	self setParent: self types to: self
]

{ #category : #generated }
GoMethodDeclNode >> unaryOps [
	^ unaryOps
]

{ #category : #generated }
GoMethodDeclNode >> unaryOps: anOrderedCollection [
	unaryOps := anOrderedCollection
]
