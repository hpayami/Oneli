//
//  Comparable-Clamped.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/18/23.
//

import Foundation
 

internal extension Comparable {
	func clamped(to limits: ClosedRange<Self>) -> Self {
		return min(max(self, limits.lowerBound), limits.upperBound)
	}
}
