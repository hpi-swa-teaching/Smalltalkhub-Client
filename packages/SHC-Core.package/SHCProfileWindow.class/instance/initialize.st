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
	displayNameLabel
		contents: 'fullName';
		fontName: #ComicBold size:24;
		position: self position + (10@25).
	self addMorph: displayNameLabel.
	
	"user details"
	usernameLabel := TextMorph new.
	usernameLabel
		contents: '~username';
		position: self position + (10@45).
	self addMorph: usernameLabel.
	
	locationLabel := TextMorph new.
	locationLabel
		contents: 'Location';
		position: self position + (10@65).
	self addMorph: locationLabel.
	
	websiteLabel := TextMorph new.
	websiteLabel
		contents: 'Website';
		position: self position + (10@85).
	self addMorph: websiteLabel.
	
	emailLabel := TextMorph new.
	emailLabel
		contents: 'eMail';
		position: self position + (10@105).
	self addMorph: emailLabel.
	
	"Teams"
	teamsLabel := TextMorph new.
	teamsLabel
		contents: 'Teams';
		position: self position + (275@140).
	self addMorph: teamsLabel.
	
	self teamsIndex: 0.
	teamsList := PluggableListMorph
		on: self
		list: #teams
		selected: #teamsIndex
		changeSelected: #teamsIndex:.
	teamsList
		position: self position + (275@160);
		width: 250;
		height: 200.
	self addMorph: teamsList.
	
	"Projects"
	projectsLabel := TextMorph new.
	projectsLabel
		contents: 'Projects';
		position: self position + (10@140).
	self addMorph: projectsLabel.
	
	self projectsIndex: 0.
	projectsList := PluggableListMorph
		on: self
		list: #projects
		selected: #projectsIndex
		changeSelected: #projectsIndex:.
	projectsList
		position: self position + (10@160);
		width: 250;
		height: 200.
	self addMorph: projectsList.
	
	"Timeline"
	timelineLabel := TextMorph new.
	timelineLabel
		contents: 'Timeline';
		position: self position + (10@390).
	self addMorph: timelineLabel.
	
	self timelineIndex: 0.
	timelineList := PluggableListMorph
		on: self
		list: #timeline
		selected: #timelineIndex
		changeSelected: #timelineIndex:.
	timelineList
		position: self position + (10@410);
		width: 250;
		height: 200.
	self addMorph: timelineList.
	
	"Watching"
	watchingLabel := TextMorph new.
	watchingLabel
		contents: 'Watching these projects';
		position: self position + (275@390).
	self addMorph: watchingLabel.
	
	self watchingIndex: 0.
	watchingList := PluggableListMorph
		on: self
		list: #watching
		selected: #watchingIndex
		changeSelected: #watchingIndex:.
	watchingList
		position: self position + (275@410);
		width: 250;
		height: 200.
	self addMorph: watchingList.
	
	self openInHand.