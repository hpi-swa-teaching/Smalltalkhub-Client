as yet unclassified
setUp 
	self clientInstance: SHCClient new.
	self clientInstance
		username: 'ShcTestUser';
		password: 'HurfDurf';
		login.
	
	self requestInstance: (SHCProjectModificationRequest withWebClient: (self clientInstance  webclient))