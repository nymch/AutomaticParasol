versions
version01: spec
	<version: '0.1' imports: #('0.1-baseline' )>
	
	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'v0.1'.
		spec author: 'KensukeOhta'.
		spec timestamp: '1/20/2016 12:01'.
		spec
			package: 'AutomaticParasol-Core' with: 'AutomaticParasol-Core-KensukeOhta.9'.
			].