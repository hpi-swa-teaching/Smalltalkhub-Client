as yet unclassified
initialize 
	super initialize.
	
	teams := #().
	timeline := #().
	projects := #().
	watching := #().
	
	self
		width: 540;
		height: 620;
		setLabel: 'Profile'.
	
	"Display name"
	displayNameLabel := TextMorph new.
	self displayNameLabel
		contents: 'fullName';
		fontName: #ComicBold size:24;
		position: self position + (10@25).
	self addMorph: self displayNameLabel.
	
	"user details"
	usernameLabel := TextMorph new.
	self usernameLabel
		contents: '~username';
		position: self position + (10@45).
	self addMorph: self usernameLabel.
	
	locationLabel := TextMorph new.
	self locationLabel
		contents: 'Location';
		position: self position + (10@65).
	self addMorph: self locationLabel.
	
	websiteLabel := TextMorph new.
	self websiteLabel
		contents: 'Website';
		position: self position + (10@85).
	self addMorph: self websiteLabel.
	
	emailLabel := TextMorph new.
	self emailLabel
		contents: 'eMail';
		position: self position + (10@105).
	self addMorph: self emailLabel.
	
	"Teams"
	teamsLabel := TextMorph new.
	self teamsLabel
		contents: 'Teams';
		position: self position + (275@140).
	self addMorph: self teamsLabel.
	
	self teamsIndex: 0.
	teamsList := PluggableListMorph
		on: self
		list: #teams
		selected: #teamsIndex
		changeSelected: #teamsIndex:.
	self teamsList
		position: self position + (275@160);
		width: 250;
		height: 200.
	self addMorph: self teamsList.
	
	"Projects"
	projectsLabel := TextMorph new.
	self projectsLabel
		contents: 'Projects';
		position: self position + (10@140).
	self addMorph: self projectsLabel.
	
	self projectsIndex: 0.
	projectsList := PluggableListMorph
		on: self
		list: #projects
		selected: #projectsIndex
		changeSelected: #projectsIndex:.
	self projectsList
		position: self position + (10@160);
		width: 250;
		height: 200.
	self addMorph: self projectsList.
	
	"Timeline"
	timelineLabel := TextMorph new.
	self timelineLabel
		contents: 'Timeline';
		position: self position + (10@390).
	self addMorph: self timelineLabel.
	
	self timelineIndex: 0.
	timelineList := PluggableListMorph
		on: self
		list: #timeline
		selected: #timelineIndex
		changeSelected: #timelineIndex:.
	self timelineList
		position: self position + (10@410);
		width: 250;
		height: 200.
	self addMorph: self timelineList.
	
	"Watching"
	watchingLabel := TextMorph new.
	self watchingLabel
		contents: 'Watching these projects';
		position: self position + (275@390).
	self addMorph: self watchingLabel.
	
	self watchingIndex: 0.
	watchingList := PluggableListMorph
		on: self
		list: #watching
		selected: #watchingIndex
		changeSelected: #watchingIndex:.
	self watchingList
		position: self position + (275@410);
		width: 250;
		height: 200.
	self addMorph: self watchingList.
	
	self openInHand.