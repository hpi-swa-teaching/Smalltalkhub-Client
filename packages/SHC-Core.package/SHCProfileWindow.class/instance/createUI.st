initialization
createUI 	
	teams := #().
	timeline := #().
	projects := #().
	watching := #().
	
	(self window)
		width: 530;
		height: 595;
		setLabel: 'Profile'.
	
	"Display name"
	self displayNameLabel: TextMorph new.
	self displayNameLabel
		contents: 'fullName';
		fontName: #ComicBold size:24;
		position: self window position + (10@25).
	self window addMorph: self displayNameLabel.
	
	"user details"
	self usernameLabel: TextMorph new.
	self usernameLabel
		contents: '~username';
		position: self window position + (10@45).
	self window addMorph: self usernameLabel.
	
	self locationLabel: TextMorph new.
	self locationLabel
		contents: 'Location';
		position: self window position + (10@65).
	self window addMorph: self locationLabel.
	
	self websiteLabel: TextMorph new.
	self websiteLabel
		contents: 'Website';
		position: self window position + (10@85).
	self window addMorph: self websiteLabel.
	
	self emailLabel: TextMorph new.
	self emailLabel
		contents: 'eMail';
		position: self window position + (10@105).
	self window addMorph: self emailLabel.
	
	"Teams"
	self teamsLabel: TextMorph new.
	self teamsLabel
		contents: 'Teams';
		position: self window position + (270@140).
	self window addMorph: self teamsLabel.
	
	self teamsIndex: 0.
	self teamsList: (PluggableListMorph
		on: self
		list: #teamNames
		selected: #teamsIndex
		changeSelected: #teamsIndex:).
	self teamsList
		position: self window position + (270@160);
		width: 250;
		height: 200;
		doubleClickSelector: #teamsListClick.
	self window addMorph: self teamsList.
	
	"Projects"
	self projectsLabel: TextMorph new.
	self projectsLabel
		contents: 'Projects';
		position: self window position + (10@140).
	self window addMorph: self projectsLabel.
	
	self projectsIndex: 0.
	self projectsList: (PluggableListMorph
		on: self
		list: #projectNames
		selected: #projectsIndex
		changeSelected: #projectsIndex:).
	self projectsList
		position: self window position + (10@160);
		width: 250;
		height: 200;
		doubleClickSelector: #projectsListClick.
	self window addMorph: self projectsList.
	
	"Timeline"
	self timelineLabel: TextMorph new.
	self timelineLabel
		contents: 'Timeline';
		position: self window position + (10@365).
	self window addMorph: self timelineLabel.
	
	self timelineIndex: 0.
	self timelineList: (PluggableListMorph
		on: self
		list: #timeline
		selected: #timelineIndex
		changeSelected: #timelineIndex:).
	self timelineList
		position: self window position + (10@385);
		width: 250;
		height: 200.
	self window addMorph: self timelineList.
	
	"Watching"
	self watchingLabel: TextMorph new.
	self watchingLabel
		contents: 'Watching these projects';
		position: self window position + (270@365).
	self window addMorph: self watchingLabel.
	
	self watchingIndex: 0.
	self watchingList: (PluggableListMorph
		on: self
		list: #watching
		selected: #watchingIndex
		changeSelected: #watchingIndex:).
	self watchingList
		position: self window position + (270@385);
		width: 250;
		height: 200.
	self window addMorph: self watchingList.