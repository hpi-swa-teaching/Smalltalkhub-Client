as yet unclassified
parseLeapMonth
	| monthSecond |
	monthSecond := (SHCUnixTimestampConverter daySecond * (SHCUnixTimestampConverter leapMonth at: self month)).
	(self timestamp > monthSecond)
		ifTrue: [self timestamp: self timestamp - monthSecond.
				self increaseMonth.
				self parseLeapMonth]