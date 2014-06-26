executing
executePut: aUrl content: aContentString
	^ self webclient httpPut: aUrl content: aContentString type: (self class requestDataType) 
	