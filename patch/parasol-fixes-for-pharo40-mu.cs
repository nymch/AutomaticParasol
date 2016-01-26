'From Pharo4.0 of 18 March 2013 [Latest update: #40614] on 24 June 2015 at 5:47:47.355774 pm'!

!BPPharoPlatform methodsFor: 'facade' stamp: 'MasashiUmezawa 6/24/2015 17:44'!
fileDelete: filename
	Smalltalk at: #FileDirectory ifPresent: [:cls | ^cls default deleteFileNamed: filename].
	
	filename asFileReference ensureDelete! !

!BPPharoPlatform methodsFor: 'facade' stamp: 'MasashiUmezawa 6/24/2015 17:03'!
jsonRead: aString 
	Smalltalk globals at: #JSJsonParser ifPresent: [:cls | ^cls parse: aString].
	Smalltalk globals at: #Json ifPresent: [:cls | ^cls readFrom: aString readStream].
	! !

!BPPharoPlatform methodsFor: 'facade' stamp: 'MasashiUmezawa 6/24/2015 17:04'!
jsonWrite: anObject
	(Smalltalk globals hasClassNamed: #JSJsonParser) ifTrue: [ ^anObject asJson ].
	^anObject asJsonString! !

