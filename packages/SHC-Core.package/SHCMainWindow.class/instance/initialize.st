initialization
initialize
	super initialize.
	self width: 470.
	self height: 380.
	self setLabel: 'SmalltalkHub Client'.
	self client: SHCClient new.
		
	self searchController: SHCSearchController new.
	self searchController client: (self client).
	
	self projectNames: #().
	self mainListMorphIndex: 0.
	self myProjectsListMorphIndex: 0.
	
	self createUI.
	
	self applyLoggedOutUi.
	self relogin.
	
	