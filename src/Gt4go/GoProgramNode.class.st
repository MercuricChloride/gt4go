Class {
	#name : #GoProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #'Gt4go-Parser'
}

{ #category : #generated }
GoProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
