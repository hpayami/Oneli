	//
	// Copyright © 2023 PhD Hossein Payami. All rights reserved.
	//
import Foundation

extension Data {
	private static let hexRegex = try! NSRegularExpression(pattern: "^([a-fA-F0-9][a-fA-F0-9])*$", options: [])
	
	public var bytes: [UInt8] {
		return [UInt8](self)
	}
	
	init?(randomOfLength length: Int) {
		var bytes = [UInt8](repeating: 0, count: length)
		let _ = SecRandomCopyBytes(kSecRandomDefault, length, &bytes)
		self.init(bytes)
	}
	
	public func dataToHex() -> String {
		return self.map { String(format: "%02X", $0) }.joined()
	}
	
	init?(hexString: String) {
		if Data.hexRegex.matches(in: hexString, range: NSMakeRange(0, hexString.count)).isEmpty {
			return nil // does not look like a hexadecimal string
		}
		let chars = Array(hexString)
		let bytes: [UInt8] =
		stride(from: 0, to: chars.count, by: 2)
			.map { UInt8(String([chars[$0], chars[$0 + 1]]), radix: 16) }
			.compactMap { $0 }
		
		self = Data(bytes)
	}
}
