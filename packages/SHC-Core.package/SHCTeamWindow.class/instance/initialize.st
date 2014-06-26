as yet unclassified
initialize 
	super initialize.
	
	memberlist := #().
	projects := #().
	
	self
		width: 530;
		height: 290;
		setLabel: 'Team'.
	
	"Display teamName"
	teamNameLabel := TextMorph new.
	self teamNameLabel
		contents: 'teamName';
		fontName: #ComicBold size:24;
		position: self position + (10@25).
	self addMorph: self teamNameLabel.
	
	"TeamMember"
	teamMemberLabel := TextMorph new.
	self teamMemberLabel
		contents: 'TeamMember';
		position: self position + (10@60).
	self addMorph: self teamMemberLabel.
	
	self teamsIndex: 0.
	teamMemberList := PluggableListMorph
		on: self
		list: #teamMember
		selected: #teamsIndex
		changeSelected: #teamsIndex:.
	self teamMemberList
		position: self position + (10@80);
		width: 250;
		height: 200.
	self addMorph: self teamMemberList.
	
	"Projects"
	projectsLabel := TextMorph new.
	self projectsLabel
		contents: 'Projects';
		position: self position + (275@60).
	self addMorph: self projectsLabel.
	
	self projectsIndex: 0.
	projectsList := PluggableListMorph
		on: self
		list: #projects
		selected: #projectsIndex
		changeSelected: #projectsIndex:.
	self projectsList
		position: self position + (275@80);
		width: 250;
		height: 200.
	self addMorph: self projectsList.
	
	self openInHand.