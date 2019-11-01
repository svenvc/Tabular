Class {
	#name : #BaselineOfTabular,
	#superclass : #BaselineOf,
	#category : #BaselineOfTabular
}

{ #category : #baselines }
BaselineOfTabular >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec baseline: 'XMLWriter' with: [ spec repository: 'github://svenvc/XML-Support-Pharo' ].
			spec baseline: 'XMLParser' with: [ spec repository: 'github://svenvc/XML-Support-Pharo' ].
			spec package: 'Tabular' with: [ spec requires: #('XMLWriter' 'XMLParser') ].
			spec group: 'Core' with: #('Tabular') ]
]
