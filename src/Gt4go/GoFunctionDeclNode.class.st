Class {
	#name : #GoFunctionDeclNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'names',
		'paramses',
		'reses',
		'idents',
		'argses',
		'typeLists',
		'unaryOps',
		'mulOps',
		'addOps',
		'relOps',
		'channels',
		'postStmts',
		'initStmts',
		'recvExprs',
		'types',
		'firsts',
		'nexts',
		'tags',
		'params'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoFunctionDeclNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunctionDecl: self
]

{ #category : #generated }
GoFunctionDeclNode >> addOps [
	^ addOps
]

{ #category : #generated }
GoFunctionDeclNode >> addOps: anOrderedCollection [
	addOps := anOrderedCollection
]

{ #category : #generated }
GoFunctionDeclNode >> argses [
	^ argses
]

{ #category : #generated }
GoFunctionDeclNode >> argses: anOrderedCollection [
	self setParents: self argses to: nil.
	argses := anOrderedCollection.
	self setParents: self argses to: self
]

{ #category : #generated }
GoFunctionDeclNode >> channels [
	^ channels
]

{ #category : #generated }
GoFunctionDeclNode >> channels: anOrderedCollection [
	self setParent: self channels to: nil.
	channels := anOrderedCollection.
	self setParent: self channels to: self
]

{ #category : #generated }
GoFunctionDeclNode >> compositeNodeVariables [
	^ #(#paramses #argses #typeLists #params)
]

{ #category : #generated }
GoFunctionDeclNode >> compositeTokenVariables [
	^ #(#idents #unaryOps #mulOps #addOps #relOps #tags #firsts #nexts)
]

{ #category : #generated }
GoFunctionDeclNode >> firsts [
	^ firsts
]

{ #category : #generated }
GoFunctionDeclNode >> firsts: anOrderedCollection [
	firsts := anOrderedCollection
]

{ #category : #generated }
GoFunctionDeclNode >> idents [
	^ idents
]

{ #category : #generated }
GoFunctionDeclNode >> idents: anOrderedCollection [
	idents := anOrderedCollection
]

{ #category : #generated }
GoFunctionDeclNode >> initStmts [
	^ initStmts
]

{ #category : #generated }
GoFunctionDeclNode >> initStmts: anOrderedCollection [
	self setParent: self initStmts to: nil.
	initStmts := anOrderedCollection.
	self setParent: self initStmts to: self
]

{ #category : #'generated-initialize-release' }
GoFunctionDeclNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	paramses := OrderedCollection new: 2.
	reses := OrderedCollection new: 2.
	idents := OrderedCollection new: 2.
	argses := OrderedCollection new: 2.
	typeLists := OrderedCollection new: 2.
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
GoFunctionDeclNode >> mulOps [
	^ mulOps
]

{ #category : #generated }
GoFunctionDeclNode >> mulOps: anOrderedCollection [
	mulOps := anOrderedCollection
]

{ #category : #generated }
GoFunctionDeclNode >> names [
	^ names
]

{ #category : #generated }
GoFunctionDeclNode >> names: anOrderedCollection [
	self setParent: self names to: nil.
	names := anOrderedCollection.
	self setParent: self names to: self
]

{ #category : #generated }
GoFunctionDeclNode >> nexts [
	^ nexts
]

{ #category : #generated }
GoFunctionDeclNode >> nexts: anOrderedCollection [
	nexts := anOrderedCollection
]

{ #category : #generated }
GoFunctionDeclNode >> otherVariables [
	^ #(#names #reses #channels #postStmts #initStmts #types #recvExprs)
]

{ #category : #generated }
GoFunctionDeclNode >> params [
	^ params
]

{ #category : #generated }
GoFunctionDeclNode >> params: anOrderedCollection [
	self setParents: self params to: nil.
	params := anOrderedCollection.
	self setParents: self params to: self
]

{ #category : #generated }
GoFunctionDeclNode >> paramses [
	^ paramses
]

{ #category : #generated }
GoFunctionDeclNode >> paramses: anOrderedCollection [
	self setParents: self paramses to: nil.
	paramses := anOrderedCollection.
	self setParents: self paramses to: self
]

{ #category : #generated }
GoFunctionDeclNode >> postStmts [
	^ postStmts
]

{ #category : #generated }
GoFunctionDeclNode >> postStmts: anOrderedCollection [
	self setParent: self postStmts to: nil.
	postStmts := anOrderedCollection.
	self setParent: self postStmts to: self
]

{ #category : #generated }
GoFunctionDeclNode >> recvExprs [
	^ recvExprs
]

{ #category : #generated }
GoFunctionDeclNode >> recvExprs: anOrderedCollection [
	self setParent: self recvExprs to: nil.
	recvExprs := anOrderedCollection.
	self setParent: self recvExprs to: self
]

{ #category : #generated }
GoFunctionDeclNode >> relOps [
	^ relOps
]

{ #category : #generated }
GoFunctionDeclNode >> relOps: anOrderedCollection [
	relOps := anOrderedCollection
]

{ #category : #generated }
GoFunctionDeclNode >> reses [
	^ reses
]

{ #category : #generated }
GoFunctionDeclNode >> reses: anOrderedCollection [
	self setParent: self reses to: nil.
	reses := anOrderedCollection.
	self setParent: self reses to: self
]

{ #category : #generated }
GoFunctionDeclNode >> tags [
	^ tags
]

{ #category : #generated }
GoFunctionDeclNode >> tags: anOrderedCollection [
	tags := anOrderedCollection
]

{ #category : #generated }
GoFunctionDeclNode >> typeLists [
	^ typeLists
]

{ #category : #generated }
GoFunctionDeclNode >> typeLists: anOrderedCollection [
	self setParents: self typeLists to: nil.
	typeLists := anOrderedCollection.
	self setParents: self typeLists to: self
]

{ #category : #generated }
GoFunctionDeclNode >> types [
	^ types
]

{ #category : #generated }
GoFunctionDeclNode >> types: anOrderedCollection [
	self setParent: self types to: nil.
	types := anOrderedCollection.
	self setParent: self types to: self
]

{ #category : #generated }
GoFunctionDeclNode >> unaryOps [
	^ unaryOps
]

{ #category : #generated }
GoFunctionDeclNode >> unaryOps: anOrderedCollection [
	unaryOps := anOrderedCollection
]
