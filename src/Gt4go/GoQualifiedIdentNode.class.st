Class {
	#name : #GoQualifiedIdentNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'first',
		'next'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoQualifiedIdentNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitQualifiedIdent: self
]

{ #category : #generated }
GoQualifiedIdentNode >> first [
	^ first
]

{ #category : #generated }
GoQualifiedIdentNode >> first: aSmaCCToken [
	first := aSmaCCToken
]

{ #category : #generated }
GoQualifiedIdentNode >> next [
	^ next
]

{ #category : #generated }
GoQualifiedIdentNode >> next: aSmaCCToken [
	next := aSmaCCToken
]

{ #category : #generated }
GoQualifiedIdentNode >> tokenVariables [
	^ #(#first #next)
]
