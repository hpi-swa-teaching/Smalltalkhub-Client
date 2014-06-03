as yet unclassified
initialize
	super initialize.
	
	self width: 400.
	self height: 700.
	
	projectNameLabel := TextMorph new.
	projectNameLabel 
		position: self position + (20@30).
	self addMorph: projectNameLabel.
	
	self openInHand 