actions
outputSource
	| stream |
	stream := String new writeStream.
	stream << 'driver := BPRemoteWebDriver new.'.
	stream << String cr.
	stream << 'driver get: '.
	stream << ('''', self baseUrl , '''.').
	stream << String cr.
	self testActions do:[:each |
		stream << 'element := driver '.
		stream << (each element type) asString.
		stream << ' '''.
		stream << (each element value).
		stream << '''.'.
		stream << String cr.
		stream << (self outputAction: (each type) with: (each value)).
		stream << String cr.
	].
	stream close.
	^stream contents.