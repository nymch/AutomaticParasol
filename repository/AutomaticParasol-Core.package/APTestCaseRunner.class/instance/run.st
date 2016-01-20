actions
run
	self driver get: self baseUrl.
	self testActions do:[:action |
		action driver: self driver.
		action value ifNotNil:[
			action perform: (action type) with: (action value).
		] ifNil:[
			action perform: (action type).
		].
	].