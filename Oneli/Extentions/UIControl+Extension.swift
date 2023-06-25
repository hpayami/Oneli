//
// Copyright © 2023 PhD Hossein Payami. All rights reserved.
//

import SwiftUI

extension UIControl {
	func addAction(for controlEvents: UIControl.Event, action: @escaping () -> Void) {
		let sleeve = ClosureSleeve(attachTo: self, closure: action)
		addTarget(sleeve, action: #selector(ClosureSleeve.invoke), for: controlEvents)
	}
}

var AssociatedObjectHandle: UInt8 = 0

class ClosureSleeve {
	let closure: () -> Void

	init(attachTo: AnyObject, closure: @escaping () -> Void) {
		self.closure = closure
		objc_setAssociatedObject(attachTo, &AssociatedObjectHandle, self, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
	}

	@objc func invoke() {
		closure()
	}
}
