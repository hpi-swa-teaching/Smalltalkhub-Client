as yet unclassified
initialize 
	super initialize.
	
	teams := #().
	timeline := #().
	projects := #().
	watching := #().
	
	self
		width: 570;
		height: 600;
		setLabel: 'Profile'.
	
	"Display name"
	displayNameLabel := TextMorph new.
	displayNameLabel
		contents: 'fullName';
		position: self position + (100@20).
	self addMorph: displayNameLabel.
	
	"user details"
	usernameLabel := TextMorph new.
	usernameLabel
		contents: '~username';
		position: self position + (100@45).
	self addMorph: usernameLabel.
	
	locationLabel := TextMorph new.
	locationLabel
		contents: 'Location';
		position: self position + (100@65).
	self addMorph: locationLabel.
	
	memberSinceLabel := TextMorph new.
	memberSinceLabel
		contents: 'Member Since';
		position: self position + (170@65).
	self addMorph: memberSinceLabel.
	
	websiteLabel := TextMorph new.
	websiteLabel
		contents: 'Website';
		position: self position + (280@65).
	self addMorph: websiteLabel.
	
	emailLabel := TextMorph new.
	emailLabel
		contents: 'eMail';
		position: self position + (360@65).
	self addMorph: emailLabel.
	
	"Teams"
	teamsLabel := TextMorph new.
	teamsLabel
		contents: 'Teams';
		position: self position + (275@100).
	self addMorph: teamsLabel.
	
	self teamsIndex: 0.
	teamsList := PluggableListMorph
		on: self
		list: #teams
		selected: #teamsIndex
		changeSelected: #teamsIndex:.
	teamsList
		position: self position + (275@120);
		width: 250;
		height: 200.
	self addMorph: teamsList.
	
	"Projects"
	projectsLabel := TextMorph new.
	projectsLabel
		contents: 'Projects';
		position: self position + (10@100).
	self addMorph: projectsLabel.
	
	self projectsIndex: 0.
	projectsList := PluggableListMorph
		on: self
		list: #projects
		selected: #projectsIndex
		changeSelected: #projectsIndex:.
	projectsList
		position: self position + (10@120);
		width: 250;
		height: 200.
	self addMorph: projectsList.
	
	"Timeline"
	timelineLabel := TextMorph new.
	timelineLabel
		contents: 'Timeline';
		position: self position + (10@350).
	self addMorph: timelineLabel.
	
	self timelineIndex: 0.
	timelineList := PluggableListMorph
		on: self
		list: #timeline
		selected: #timelineIndex
		changeSelected: #timelineIndex:.
	timelineList
		position: self position + (10@370);
		width: 250;
		height: 200.
	self addMorph: timelineList.
	
	"Watching"
	watchingLabel := TextMorph new.
	watchingLabel
		contents: 'Watching these projects';
		position: self position + (275@350).
	self addMorph: watchingLabel.
	
	self watchingIndex: 0.
	watchingList := PluggableListMorph
		on: self
		list: #watching
		selected: #watchingIndex
		changeSelected: #watchingIndex:.
	watchingList
		position: self position + (275@370);
		width: 250;
		height: 200.
	self addMorph: watchingList.
	
	self openInHand.
	