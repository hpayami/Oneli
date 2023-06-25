//
//  ApplicationCoordinator.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 2/21/23.
//

import SwiftUI
import UIKit
@available(iOS 16.4, *)
class ApplicationCoordinator: Coordinator {
	
	let window:  UIWindow
	init(window: UIWindow) {
		self.window = window
		
	}
	func Start() {
		window.rootViewController = UIHostingController(rootView: HomeView())
		
		 
	}
}



