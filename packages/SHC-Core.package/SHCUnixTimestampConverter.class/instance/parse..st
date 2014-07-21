parsing
parse: aTimestamp
	self timestamp: aTimestamp - 2177460000.
	self parseYear.
	(self isLeapYear) ifTrue: [self parseLeapMonth] ifFalse: [self parseMonth].
	self parseDay.
	self parseHour.
	self parseMinute.
	self parseSecond.
	(self day < 10) ifTrue: [self day: '0' , self day asString] ifFalse: [self day: self day asString].
	(self month < 10) ifTrue: [self month: '0' , self month asString] ifFalse: [self month: self month asString].
	self year: self year asString.
	(self hour < 10) ifTrue: [self hour: '0' , self hour asString] ifFalse: [self hour: self hour asString].
	(self minute < 10) ifTrue: [self minute: '0' , self minute asString] ifFalse: [self minute: self minute asString].
	(self second < 10) ifTrue: [self second: '0' , self second asString] ifFalse: [self second: self second asString]. 
	^ self day , '.' , self month , '.' , self year , ', ' , self hour , ':' , self minute , ':' , self second , ' UTC'