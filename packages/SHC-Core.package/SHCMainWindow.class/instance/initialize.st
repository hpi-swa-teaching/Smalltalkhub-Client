initialization
initialize
	super initialize.
	self window width: 470.
	self window height: 380.
	self window setLabel: 'SmalltalkHub Client'.
	self client: SHCClient new.
		
	self searchController: SHCSearchController new.
	self searchController client: (self client).
	
	self projectNames: #().
	self mainListMorphIndex: 0.
	self myProjectsListMorphIndex: 0.
	
	self createUI.
	
	self applyLoggedOutUi.
	self relogin
	
	