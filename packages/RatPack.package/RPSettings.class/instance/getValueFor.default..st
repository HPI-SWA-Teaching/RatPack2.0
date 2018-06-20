private
getValueFor: aKey default: aBlock

	^ values at: aKey ifAbsentPut: aBlock.