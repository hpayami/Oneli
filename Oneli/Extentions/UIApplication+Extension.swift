//
//  UIApplication+Extension.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 2023/5/20.
//

import Foundation
import UIKit

extension UIApplication {

	var mainKeyWindow: UIWindow? {
		get {
			if #available(iOS 13, *) {
				return connectedScenes
					.flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
					.first { $0.isKeyWindow }
			} else {
				return keyWindow
			}
		}
	}

}
