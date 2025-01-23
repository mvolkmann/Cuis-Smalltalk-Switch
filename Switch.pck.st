'From Cuis7.3 [latest update: #6991] on 22 January 2025 at 6:36:41 pm'!
'Description '!
!provides: 'Switch' 1 1!
SystemOrganization addCategory: #Switch!



!Object methodsFor: '*Switch' stamp: 'RMV 1/22/2025 18:23:30'!
switchOn: assocColl
	"The elements of assocColl are associations. Answer the evaluated value
	of the first association in assocCol whose evaluated key equals the receiver.
	If no match is found, signal an error.
	This differs from caseOf: in that the keys and values
	of the associations are not required to be blocks."

	^ self switchOn: assocColl otherwise: [ self caseError ]! !

!Object methodsFor: '*Switch' stamp: 'RMV 1/22/2025 18:23:24'!
switchOn: assocColl otherwise: aBlock
	"The elements of assocColl must be associations. Answer the evaluated value
	of the first association in assocCol whose evaluated key equals the receiver.
	If no match is found, answer the result of evaluating aBlock.
	This differs from caseOf: in that the keys and values
	of the associations are not required to be blocks."

	assocColl associationsDo:
		[ :assoc | (assoc key value = self) ifTrue: [ ^assoc value value ] ].
	^ aBlock value! !
