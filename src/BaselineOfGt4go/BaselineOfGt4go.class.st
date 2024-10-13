Class {
	#name : #BaselineOfGt4go,
	#superclass : #BaselineOf,
	#category : #BaselineOfGt4go
}

{ #category : #loading }
BaselineOfGt4go class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'gt4go' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfGt4go >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'Gt4go'
		]
]
