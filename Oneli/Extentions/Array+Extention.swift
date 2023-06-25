//
// Copyright © 2023 PhD Hossein Payami. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {
	@discardableResult
	mutating func removeObject(object: Element) -> Bool {
		if let index = firstIndex(of: object) {
			remove(at: index)
			return true
		}
		return false
	}

	//    func indexOf(object: Element) ->
}
