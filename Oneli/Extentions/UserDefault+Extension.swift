//
// Copyright © 2023 PhD Hossein Payami. All rights reserved.
//

import Foundation

extension UserDefaults {
	private enum OneliKeys: String {
		/// Key that notifies when remote Config check and run
		case StoredRemoteConfigCheckDate
	}

	/// Sets and Gets a `UserDefault` around the last time the remote Config was runed.
	static var remoteConfigFetchDate: Date? {
		get {
			return standard.object(forKey: OneliKeys.StoredRemoteConfigCheckDate.rawValue) as? Date
		} set {
			standard.set(newValue, forKey: OneliKeys.StoredRemoteConfigCheckDate.rawValue)
			self.standard.synchronize()
		}
	}
}
