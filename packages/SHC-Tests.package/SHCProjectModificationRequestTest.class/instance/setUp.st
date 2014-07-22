as yet unclassified
setUp 
	self clientInstance: SHCClient new.
	self clientInstance
		username: 'ShcTestUser1';
		password: 'ShcTestPW';
		login.
	
	self requestInstance: (SHCProjectModificationRequest withWebClient: (self clientInstance  webclient))