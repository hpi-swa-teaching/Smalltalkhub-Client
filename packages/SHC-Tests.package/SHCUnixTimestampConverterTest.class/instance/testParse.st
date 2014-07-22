as yet unclassified
testParse
	| result timestamp |
	timestamp := 1404999346 + 2177460000.
	result := converterInstance parse: timestamp.
	self assert: (result = '10.07.2014, 13:35:46 UTC')