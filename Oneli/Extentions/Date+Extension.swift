//
// Copyright © 2023 PhD Hossein Payami. All rights reserved.
//

import Foundation

extension Date {
	/// The amount of days passed from a specific source date.
	///
	/// - Parameter date: The source date.
	/// - Returns: The amount of days passed since the source date.
	static func days(since date: Date) -> Int {
		let calendar = Calendar.current
		let components = calendar.dateComponents([.day], from: date, to: Date())
		return components.day ?? 0
	}

	/// The amount of days passed from a specific source date string.
	///
	/// - Parameters:
	///   - dateString: The source date string.
	/// - Returns: The amount of days passed since the source date.
	static func days(since dateString: String) -> Int? {
		let dateFormatter = DateFormatter()
		dateFormatter.locale = Locale(identifier: "en_US_POSIX")
		dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
		dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)

		guard let date = dateFormatter.date(from: dateString) else {
			return nil
		}

		return days(since: date)
	}

	static func houres(since date: Date) -> Int {
		let calendar = Calendar.current
		let components = calendar.dateComponents([.hour], from: date, to: Date())
		return components.hour ?? 0
	}

	/// The amount of days passed from a specific source date string.
	func getCurrentMilli() -> Int {
		return Int(self.timeIntervalSince1970 * 1000)
	}
}
