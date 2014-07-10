as yet unclassified
parseDay
	(self timestamp > (SHCUnixTimestampConverter daySecond))
		ifTrue: [self timestamp: self timestamp - (SHCUnixTimestampConverter daySecond).
				self increaseDay.
				self parseDay].