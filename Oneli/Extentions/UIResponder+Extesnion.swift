//
// Copyright © 2023 PhD Hossein Payami. All rights reserved.
//

import SwiftUI

// From https://stackoverflow.com/a/14135456/6870041
extension UIResponder {
	static var currentFirstResponder: UIResponder? {
		_currentFirstResponder = nil
		UIApplication.shared.sendAction(#selector(UIResponder.findFirstResponder(_:)), to: nil, from: nil, for: nil)
		return _currentFirstResponder
	}

	private weak static var _currentFirstResponder: UIResponder?

	@objc private func findFirstResponder(_: Any) {
		UIResponder._currentFirstResponder = self
	}

	var globalView: UIView? {
		return self as? UIView
	}

	var globalFrame: CGRect? {
		guard let view = self as? UIView else { return nil }
		return view.superview?.convert(view.frame, to: nil)
	}
}
