Class {
	#name : #GoPackageClauseNode,
	#superclass : #GoProgramNode,
	#instVars : [
		'packageName'
	],
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoPackageClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPackageClause: self
]

{ #category : #generated }
GoPackageClauseNode >> packageName [
	^ packageName
]

{ #category : #generated }
GoPackageClauseNode >> packageName: aSmaCCToken [
	packageName := aSmaCCToken
]

{ #category : #generated }
GoPackageClauseNode >> tokenVariables [
	^ #(#packageName)
]
