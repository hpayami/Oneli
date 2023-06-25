//
// Copyright © 2023 PhD Hossein Payami. All rights reserved.
//

import Foundation
import SwiftUI

struct NavigationBarModifier: ViewModifier {
	var backgroundColor: UIColor? = .clear
	var isTransparentBackgroundInStandardAppearance: Bool = false
	var isTransparentBackgroundInScrollEdgeAppearance: Bool = false

	init(backgroundColor: UIColor? = .clear, transparentInStandard: Bool, transparentInScroll: Bool) {
		self.backgroundColor = backgroundColor
		let coloredAppearance = UINavigationBarAppearance()
		if transparentInStandard {
			coloredAppearance.configureWithTransparentBackground()
		}
		coloredAppearance.backgroundColor = .clear

		UINavigationBar.appearance().standardAppearance = coloredAppearance
		UINavigationBar.appearance().compactAppearance = coloredAppearance
		let scrollEdgeAppearance = UINavigationBarAppearance()
		if transparentInScroll {
			scrollEdgeAppearance.configureWithTransparentBackground()
		}
		scrollEdgeAppearance.backgroundColor = .clear
		UINavigationBar.appearance().scrollEdgeAppearance = scrollEdgeAppearance
		UINavigationBar.appearance().tintColor = .black
	}

	func body(content: Content) -> some View {
		ZStack {
			content
			VStack {
				GeometryReader { geometry in
					Color(self.backgroundColor ?? .clear)
						.frame(height: geometry.safeAreaInsets.top)
						.edgesIgnoringSafeArea(.top)
					Spacer()
				}
			}
		}
	}
}

extension UINavigationController {
	override open func viewDidLoad() {
		super.viewDidLoad()
		//        little navigation bar
		let standardAppearance = UINavigationBarAppearance()
		standardAppearance.backgroundColor = .clear
		standardAppearance.backgroundImage = UIImage()
		standardAppearance.shadowImage = UIImage()

		let compactAppearance = UINavigationBarAppearance()
		compactAppearance.backgroundColor = .green
		compactAppearance.backgroundImage = UIImage()
		compactAppearance.shadowImage = UIImage()

		//       large navigation bar
		let scrollEdgeAppearance = UINavigationBarAppearance()
		scrollEdgeAppearance.backgroundColor = .clear

		scrollEdgeAppearance.shadowImage = UIImage()

		navigationBar.standardAppearance = standardAppearance
		navigationBar.compactAppearance = compactAppearance
		navigationBar.scrollEdgeAppearance = scrollEdgeAppearance
		UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
		UINavigationBar.appearance().shadowImage = UIImage()
		UINavigationBar.appearance().tintColor = UIColor.black
	}
}

extension View {
	func navigationBarColor(_ backgroundColor: UIColor?, transparentInStandard: Bool, transparentInScroll: Bool) -> some View {
		self.modifier(NavigationBarModifier(backgroundColor: backgroundColor, transparentInStandard: transparentInStandard, transparentInScroll: transparentInScroll))
	}
}
