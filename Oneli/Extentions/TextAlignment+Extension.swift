//
// Copyright © 2023 PhD Hossein Payami. All rights reserved.
//
import SwiftUI
// Used in  floating label textfield
@available(iOS 13.0, *)
extension TextAlignment {
	func getAlignment() -> Alignment {
		self == .leading ? Alignment.leading : self == .trailing ? Alignment.trailing : Alignment.center
	}
}
