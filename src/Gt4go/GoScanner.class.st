Class {
	#name : #GoScanner,
	#superclass : #SmaCCScanner,
	#category : #'Gt4go-Parser'
}

{ #category : #'generated-initialization' }
GoScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(27 'break' 1) #(27 'case' 6) #(27 'chan' 11) #(27 'const' 16) #(27 'continue' 21) #(27 'default' 2) #(27 'defer' 7) #(27 'else' 12) #(27 'fallthrough' 17) #(27 'for' 22) #(27 'func' 3) #(27 'go' 8) #(27 'goto' 13) #(27 'if' 18) #(27 'import' 23) #(27 'interface' 4) #(27 'map' 9) #(27 'nil' 26) #(27 'package' 14) #(27 'range' 19) #(27 'return' 24) #(27 'select' 5) #(27 'struct' 10) #(27 'switch' 15) #(27 'type' 20) #(27 'var' 25))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #'as yet unclassified' }
GoScanner >> WS [
	^ self whitespace
]

{ #category : #generated }
GoScanner >> emptySymbolTokenId [
	^ 217
]

{ #category : #generated }
GoScanner >> errorTokenId [
	^ 218
]

{ #category : #generated }
GoScanner >> scan1 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(73) ].
	currentCharacter == $\ ifTrue: [ ^ self scan1X1 ].
	true ] whileTrue
]

{ #category : #generated }
GoScanner >> scan10 [
	[ self recordMatch: #(69).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan9 ].
	currentCharacter == $i ifTrue: [ ^ self recordAndReportMatch: #(70) ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan11 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(75) ].
			^ self scan11 ].
	true ] whileTrue
]

{ #category : #generated }
GoScanner >> scan12 [
	self recordMatch: #(69).
	self step.
	currentCharacter == $i ifTrue: [ ^ self recordAndReportMatch: #(70) ].
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan13 [
	[ self recordMatch: #(27 67).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan12 ].
	currentCharacter == $_ ifTrue: [ ^ self scan18 ].
	currentCharacter == $i ifTrue: [ ^ self scan17 ].
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan14 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan14 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan12 ].
	currentCharacter == $_
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter isDigit ifTrue: [ ^ self scan14 ].
			((currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
				ifTrue: [ [ self recordMatch: #(27).
					self step.
					(currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan15 [
	self recordMatch: #(27).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan16 ].
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan16 [
	[ self recordMatch: #(27 69).
	self step.
	currentCharacter == $_
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter isDigit ifTrue: [ ^ self scan16 ].
			((currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
				ifTrue: [ [ self recordMatch: #(27).
					self step.
					(currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $i ifTrue: [ ^ self scan17 ].
	currentCharacter isDigit ] whileTrue.
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan17 [
	self recordMatch: #(27 70).
	self step.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan18 [
	self recordMatch: #(27).
	self step.
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan14 ].
	currentCharacter isDigit ifTrue: [ ^ self scan13 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan19 [
	[ self recordMatch: #(27 66).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan20 ].
	currentCharacter == $i ifTrue: [ ^ self scan17 ].
	currentCharacter between: $0 and: $1 ] whileTrue.
	((currentCharacter between: $2 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan1X1 [
	self step.
	currentCharacter == $U
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan2 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u ifTrue: [ ^ self scan2 ].
	currentCharacter == $x ifTrue: [ ^ self scan3 ].
	(currentCharacter between: $0 and: $7)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ self step.
					(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan1 ] ].
			^ self reportLastMatch ].
	(('"''\' includes: currentCharacter)
		or: [ (currentCharacter between: $a and: $b)
				or: [ ('fnr' includes: currentCharacter)
						or: [ currentCharacter between: $t and: $v ] ] ]) ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan2 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan3 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan20 [
	self recordMatch: #(27).
	self step.
	(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan19 ].
	((currentCharacter between: $2 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan21 [
	[ self recordMatch: #(27 67).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan22 ].
	currentCharacter == $i ifTrue: [ ^ self scan17 ].
	currentCharacter between: $0 and: $7 ] whileTrue.
	((currentCharacter between: $8 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan22 [
	self recordMatch: #(27).
	self step.
	(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan21 ].
	((currentCharacter between: $8 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan23 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan24 ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan24 [
	[ self step.
	currentCharacter == $_ ifTrue: [ ^ self scan23 ].
	('Pp' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan25 [
	[ self recordMatch: #(27 68).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan24 ].
	currentCharacter == $_ ifTrue: [ ^ self scan26 ].
	currentCharacter == $i ifTrue: [ ^ self scan17 ].
	('Pp' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	((currentCharacter between: $G and: $Z)
		or: [ currentCharacter between: $g and: $z ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan26 [
	self recordMatch: #(27).
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan25 ].
	((currentCharacter between: $G and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $g and: $z ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan27 [
	[ self recordMatch: #(27 65).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan12 ].
	currentCharacter == $_
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter isDigit ifTrue: [ ^ self scan27 ].
			((currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
				ifTrue: [ [ self recordMatch: #(27).
					self step.
					(currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $i ifTrue: [ ^ self scan17 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan3 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan1 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan4 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(71) ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan5 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan6 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan6 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan4 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan7 [
	[ self recordMatch: #(69).
	self step.
	currentCharacter == $_
		ifTrue: [ self step.
			currentCharacter isDigit ifTrue: [ ^ self scan7 ].
			^ self reportLastMatch ].
	currentCharacter == $i ifTrue: [ ^ self recordAndReportMatch: #(70) ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan8 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan10 ].
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scan9 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForToken [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scanForTokenX16 ].
	currentCharacter == $" ifTrue: [ ^ self scan1 ].
	currentCharacter == $% ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	currentCharacter == $& ifTrue: [ ^ self scanForTokenX8 ].
	currentCharacter == $' ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	currentCharacter == $* ifTrue: [ ^ self recordAndReportMatch: #(62) ].
	currentCharacter == $+ ifTrue: [ ^ self scanForTokenX15 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	currentCharacter == $- ifTrue: [ ^ self scanForTokenX14 ].
	currentCharacter == $. ifTrue: [ ^ self scanForTokenX7 ].
	^ self scanForTokenX18
]

{ #category : #generated }
GoScanner >> scanForTokenX1 [
	self recordMatch: #(27 65).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan12 ].
	^ self scanForTokenX1X5
]

{ #category : #generated }
GoScanner >> scanForTokenX10 [
	[ self recordMatch: #(74).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX11 [
	self recordMatch: #(51).
	self step.
	currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(43) ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX12 [
	self recordMatch: #(34).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX13 [
	self recordMatch: #(37).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX14 [
	self recordMatch: #(60).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX15 [
	self recordMatch: #(59).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX16 [
	self recordMatch: #(58).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX17 [
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	currentCharacter == $| ifTrue: [ ^ self scanForTokenX11 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(57) ].
	currentCharacter isDigit ifTrue: [ ^ self scan27 ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scanForTokenX10 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scanForTokenX9 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $_ and: $z ]) ifTrue: [ self scanForTokenX4 ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX18 [
	currentCharacter == $/ ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $0 ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter == $: ifTrue: [ ^ self scanForTokenX13 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $< ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == $= ifTrue: [ ^ self scanForTokenX12 ].
	currentCharacter == $> ifTrue: [ ^ self scanForTokenX6 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter == $^ ifTrue: [ ^ self recordAndReportMatch: #(61) ].
	currentCharacter == $`
		ifTrue: [ [ self step.
			currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(72) ].
			true ] whileTrue ].
	^ self scanForTokenX17
]

{ #category : #generated }
GoScanner >> scanForTokenX1X1 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan23 ].
	currentCharacter == $_ ifTrue: [ ^ self scan26 ].
	((currentCharacter between: $G and: $Z)
		or: [ currentCharacter between: $g and: $z ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue.
			^ self reportLastMatch ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan25 ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX1X2 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan22 ].
	(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan21 ].
	((currentCharacter between: $8 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX1X3 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan20 ].
	(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan19 ].
	((currentCharacter between: $2 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX1X4 [
	[ self recordMatch: #(27).
	self step.
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue
]

{ #category : #generated }
GoScanner >> scanForTokenX1X5 [
	currentCharacter == $_ ifTrue: [ ^ self scan18 ].
	currentCharacter == $i ifTrue: [ ^ self scan17 ].
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan14 ].
	currentCharacter isDigit ifTrue: [ ^ self scan13 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX1X3 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan15 ].
	('Oo' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX1X2 ].
	('Xx' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX1X1 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ self scanForTokenX1X4 ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scanForTokenX2X1 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ currentCharacter >= $( ] ] ]) ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX2X1 [
	self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(71).
			self step.
			currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(71) ].
			^ self reportLastMatch ].
	currentCharacter == $U
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan5 ] ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $u ifTrue: [ ^ self scan5 ].
	currentCharacter == $x ifTrue: [ ^ self scan6 ].
	(currentCharacter between: $0 and: $7)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ self step.
					(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan4 ] ].
			^ self reportLastMatch ].
	(('"\' includes: currentCharacter)
		or: [ (currentCharacter between: $a and: $b)
				or: [ ('fnr' includes: currentCharacter)
						or: [ currentCharacter between: $t and: $v ] ] ]) ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX3 [
	self recordMatch: #(52).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan11 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(75).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX4 [
	[ self recordMatch: #(27).
	self step.
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue
]

{ #category : #generated }
GoScanner >> scanForTokenX5 [
	self recordMatch: #(47).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(64) ].
	currentCharacter == $< ifTrue: [ ^ self recordAndReportMatch: #(54) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX6 [
	self recordMatch: #(49).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(50) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(55) ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX7 [
	self recordMatch: #(38).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(42) ].
			^ self reportLastMatch ].
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX8 [
	self recordMatch: #(63).
	self step.
	currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(44) ].
	currentCharacter == $^ ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> scanForTokenX9 [
	[ self recordMatch: #(76).
	self step.
	currentCharacter == Character lf or: [ currentCharacter == Character cr ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
GoScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment)
]
