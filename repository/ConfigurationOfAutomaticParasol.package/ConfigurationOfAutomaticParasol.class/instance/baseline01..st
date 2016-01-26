baselines
baseline01: spec
	<version: '0.1-baseline'>
	
	spec for: #'common' do:[
		spec blessing: #'baseline'.
		spec description: 'AutomaticParasol is running SeleniumIDE-Generated tests in smalltalk.'.
		spec repository: 'github://nymch/AutomaticParasol:v0.1/repository'.
		spec project: 'PetitJava' with:[
			spec
				className: 'ConfigurationOfPetitJava';
				file: 'ConfigurationOfPetitJava';
				version: 'default';
				repository: 'http://smalltalkhub.com/mc/Moose/PetitJava/main'].
		spec project: 'Parasol' with:[
			spec
				className: 'ConfigurationOfParasol';
				file: 'ConfigurationOfParasol';
				version: #'development';
				repository: 'http://ss3.gemstone.com/ss/Parasol'.
			].
		spec
			package: 'AutomaticParasol-Core'.
		].