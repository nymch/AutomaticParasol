constants
findElementIdentifiersDictionary
	^{
		#name -> #findElementByName:.
		#xpath -> #findElementByName:.
		#linkText -> #findElementByLinkText:.
		#id -> #findElementByID:.
		#cssSelector -> #findElementByCSSSelector:
	} asDictionary.