	//
	// Copyright © 2023 PhD Hossein Payami. All rights reserved.
	//

import UIKit
import SwiftUI
import BackgroundTasks
import os

@available(iOS 16.4, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	var applicationCoordinator: ApplicationCoordinator?


	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		if let windowScene = scene as? UIWindowScene {
			let window = UIWindow(windowScene: windowScene)
			let applicationCoordinator = ApplicationCoordinator(window: window)
			applicationCoordinator.Start()
		 
			self.applicationCoordinator = applicationCoordinator
			window.makeKeyAndVisible()
		}
	}

	 


}



