as yet unclassified
parseHour
	(self timestamp > (SHCUnixTimestampConverter hourSecond))
		ifTrue: [self timestamp: self timestamp - (SHCUnixTimestampConverter hourSecond).
				self increaseHour.
				self parseHour].