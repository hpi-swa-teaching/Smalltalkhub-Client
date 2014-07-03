ui-actions
displayWatchers
	| watcherdetails |
	watcherdetails := self client parseUsers: (self client listWatcherFromProject: (self activeProject name) from: (self activeProject owner)).	
	self watcher: (self client usernamesAsString: watcherdetails).	
	self watcherListMorphIndex: 0.
	self changed: #watcherListMorphIndex.
	self changed: #watcher.
	