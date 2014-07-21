parsing
parseYear
	(self isLeapYear) 
		ifTrue: [(self timestamp > (SHCUnixTimestampConverter leapSecond))
					ifTrue: [self timestamp: self timestamp - SHCUnixTimestampConverter leapSecond.
							self increaseYear.
							self parseYear]]
		ifFalse: [(self timestamp > (SHCUnixTimestampConverter notLeapSecond))
					ifTrue: [self timestamp: self timestamp - SHCUnixTimestampConverter notLeapSecond.
							self increaseYear.
							self parseYear]].