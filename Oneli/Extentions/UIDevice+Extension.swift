//
// Copyright © 2023 PhD Hossein Payami. All rights reserved.
//

import SwiftUI
// https://stackoverflow.com/questions/26028918/how-to-determine-the-current-iphone-device-model
// public extension UIDevice{
//    var type: PhoneModel {
//        var systemInfo = utsname()
//        uname(&systemInfo)
//        let modelCode = withUnsafePointer(to: &systemInfo.machine) {
//            ptr in String(cString: UnsafeRawPointer(ptr).assumingMemoryBound(to: CChar.self))
//
//        }
//        guard let mcode = modelCode, let map = String(validatingUTF8: mcode) else { return PhoneModel.unrecognized }
//        let model = PhoneModel(rawValue:map)
//        return model
//    }
// }
//
// public enum PhoneModel : String {
////    https://www.theiphonewiki.com/wiki/Models
//        case simulator     = "simulator",
//// iPod
//         iPod1              = "iPod 1",
//         iPod2              = "iPod 2",
//         iPod3              = "iPod 3",
//         iPod4              = "iPod 4",
//         iPod5              = "iPod 5",
//         iPod6              = "iPod 6",
//         iPod7              = "iPod 7",
//
//         iPad2              = "iPad 2",
//         iPad3              = "iPad 3",
//         iPad4              = "iPad 4",
//         iPadAir            = "iPad Air ",
//         iPadAir2           = "iPad Air 2",
//         iPadAir3           = "iPad Air 3",
//         iPadAir4           = "iPad Air 4",
//         iPad5              = "iPad 5",
//         iPad6              = "iPad 6",
//         iPad7              = "iPad 7",
//         iPad8              = "iPad 8",
//         iPad9              = "iPad 9",
//
//         iPadMini           = "iPad Mini",
//         iPadMini2          = "iPad Mini 2",
//         iPadMini3          = "iPad Mini 3",
//         iPadMini4          = "iPad Mini 4",
//         iPadMini5          = "iPad Mini 5",
//         iPadMini6          = "iPad Mini 6",
//
//         iPadPro9_7         = "iPad Pro 9.7 ",
//         iPadPro10_5        = "iPad Pro 10.5 ",
//         iPadPro11          = "iPad Pro 11 ",
//         iPadPro2_11        = "iPad Pro 2 11 ",
//         iPadPro3_11        = "iPad Pro 3 11 ",
//         iPadPro12_9        = "iPad Pro 12.9 ",
//         iPadPro2_12_9      = "iPad Pro 2 12.9 ",
//         iPadPro3_12_9      = "iPad Pro 3 12.9 ",
//         iPadPro4_12_9      = "iPad Pro 4 12.9 ",
//         iPadPro5_12_9      = "iPad Pro 5 12.9 ",
//
//         iPhone4            = "iPhone 4",
//         iPhone4S           = "iPhone 4S",
//         iPhone5            = "iPhone 5",
//         iPhone5S           = "iPhone 5S",
//         iPhone5C           = "iPhone 5C",
//         iPhone6            = "iPhone 6",
//         iPhone6Plus        = "iPhone 6 Plus",
//         iPhone6S           = "iPhone 6S",
//         iPhone6SPlus       = "iPhone 6S Plus",
//         iPhoneSE1           = "iPhone SE 1",
//         iPhone7            = "iPhone 7",
//         iPhone7Plus        = "iPhone 7 Plus",
//         iPhone8            = "iPhone 8",
//         iPhone8Plus        = "iPhone 8 Plus",
//         iPhoneX            = "iPhone X",
//         iPhoneXS           = "iPhone XS",
//         iPhoneXSMax        = "iPhone XS Max",
//         iPhoneXR           = "iPhone XR",
//         iPhone11           = "iPhone 11",
//         iPhone11Pro        = "iPhone 11 Pro",
//         iPhone11ProMax     = "iPhone 11 Pro Max",
//         iPhoneSE2          = "iPhone SE 2",
//         iPhone12min        = "iPhone 12 min",
//         iPhone12           = "iPhone 12",
//         iPhone12Pro        = "iPhone 12 Pro",
//         iPhone12ProMax     = "iPhone 12 Pro Max",
//         iPhone13min        = "iPhone 13 min",
//         iPhone13           = "iPhone 13",
//         iPhone13Pro        = "iPhone 13 Pro",
//         iPhone13ProMax     = "iPhone 13 Pro Max",
//
//
//         AppleTV            = "Apple TV",
//         AppleTV_4K         = "Apple TV 4K",
//         unrecognized       = "?unrecognized?"
// }
// extension PhoneModel: RawRepresentable {
//    public init(rawValue: String) {
//        switch rawValue{
//        case "i386","x86_64": self = .simulator
//
//        case "iPod1,1": self = .iPod1
//        case "iPod2,1": self = .iPod2
//        case "iPod3,1": self = .iPod3
//        case "iPod4,1": self = .iPod4
//        case "iPod5,1": self = .iPod5
//        case "iPod7,1": self = .iPod6
//        case "iPod9,1": self = .iPod7
////
//        case "iPad2,1","iPad2,2","iPad2,3","iPad2,4": self = .iPad2
//        case "iPad3,1","iPad3,2","iPad3,3": self =  .iPad3
//        case "iPad3,4","iPad3,5","iPad3,6": self =  .iPad4
//        case "iPad6,11","iPad6,12": self =  .iPad5
//        case "iPad7,5","iPad7,6": self =  .iPad6
//        case "iPad7,11","iPad7,12": self =  .iPad7
//        case "iPad11,6","iPad11.7": self =  .iPad8
//        case "iPad12,1","iPad12,2": self =  .iPad9
////
//        case "iPad2,5","iPad2,6","iPad2,7":self =  .iPadMini
//        case "iPad4,4","iPad4,5","iPad4,6": self = .iPadMini2
//        case "iPad4,7","iPad4,8","iPad4,9" : self = .iPadMini3
//        case "iPad5,1","iPad5,2": self = .iPadMini4
//        case "iPad11,1","iPad11,2": self = .iPadMini5
//        case "iPad14,1","iPad14,2": self = .iPadMini6
////
//        case "iPad6,7","iPad6,8"  : self = .iPadPro12_9
//        case "iPad6,3","iPad6,4"  : self = .iPadPro9_7
//        case "iPad7,1","iPad7.2"  : self = .iPadPro2_12_9
//        case "iPad7,3","iPad7,4"  : self = .iPadPro10_5
//        case "iPad8,1","iPad8,2","iPad8,3","iPad8,4" : self = .iPadPro11
//        case "iPad8,5","iPad8,6","iPad8,7","iPad8,8" : self = .iPadPro3_12_9
//
//        case "iPad8,9","iPad8,10"  : self = .iPadPro2_11
//        case "iPad8,11","iPad8,12" : self = .iPadPro4_12_9
//        case "iPad13,4","iPad13,5","iPad13,6","iPad13,7"   : self = .iPadPro3_11
//        case "iPad13,8","iPad13,9","iPad13,10","iPad13,11" : self = .iPadPro5_12_9
////
//        case "iPad4,1","iPad4,2","iPad4,3" : self = .iPadAir
//        case "iPad5,3","iPad5,4"   :  self = .iPadAir2
//        case "iPad11,3","iPad11,4" :  self = .iPadAir3
//        case "iPad13,1","iPad13,2" :  self = .iPadAir4
////
//        case "iPhone6,1","iPhone6,2" :self = .iPhone5S
//        case "iPhone7,1" : self = .iPhone6Plus
//        case "iPhone7,2" : self = .iPhone6
//        case "iPhone8,1" : self = .iPhone6S
//        case "iPhone8,2" : self = .iPhone6SPlus
//        case "iPhone8,4" : self = .iPhoneSE1
//        case "iPhone9,1","iPhone9,3" :  self = .iPhone7
//        case "iPhone9,2", "iPhone9,4" : self = .iPhone7Plus
//        case "iPhone10,1", "iPhone10,4":self = .iPhone8
//        case "iPhone10,2","iPhone10,5": self = .iPhone8Plus
//        case "iPhone10,3","iPhone10,6": self = .iPhoneX
//        case "iPhone11,8"             : self = .iPhoneXR
//        case "iPhone11,2":              self = .iPhoneXS
//        case "iPhone11,4","iPhone11,6": self = .iPhoneXSMax
//        case "iPhone12,1" :             self = .iPhone11
//        case "iPhone12,3" :             self = .iPhone11Pro
//        case "iPhone12,5" :             self = .iPhone11ProMax
//        case "iPhone12,8" :             self = .iPhoneSE2
//        case "iPhone13,1" :             self = .iPhone12min
//        case "iPhone13,2" :             self = .iPhone12
//        case "iPhone13,3" :             self = .iPhone12Pro
//        case "iPhone13,4" :             self = .iPhone12ProMax
//        case "iPhone14,4" :             self = .iPhone13min
//        case "iPhone14,5" :             self = .iPhone13
//        case "iPhone14,2" :             self = .iPhone13Pro
//        case "iPhone14,3" :             self = .iPhone13ProMax
//
//        default: self = .unrecognized
//
//        }
//    }
// }

public extension UIDevice {
	static var modelCode: String {
		if let simulatorModelIdentifier = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] { return simulatorModelIdentifier }
		var systemInfo = utsname()
		uname(&systemInfo)
		return withUnsafeMutablePointer(to: &systemInfo.machine) {
			ptr in String(cString: UnsafeRawPointer(ptr).assumingMemoryBound(to: CChar.self))
		}
	}

	static var model: DeviceModel {
		// Thanks https://stackoverflow.com/a/26962452/5928180
		var systemInfo = utsname()
		uname(&systemInfo)
		let modelCode = withUnsafeMutablePointer(to: &systemInfo.machine) {
			ptr in String(cString: UnsafeRawPointer(ptr).assumingMemoryBound(to: CChar.self))
		}

		// Thanks https://stackoverflow.com/a/33495869/5928180
		if modelCode == "i386" || modelCode == "x86_64" {
			if let simulatorModelCode = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"], let model = DeviceModel.Model(modelCode: simulatorModelCode) {
				return DeviceModel.simulator(model)
			} else if let simulatorModelCode = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] {
				return DeviceModel.unrecognizedSimulator(simulatorModelCode)
			} else {
				return DeviceModel.unrecognized(modelCode)
			}
		} else if let model = DeviceModel.Model(modelCode: modelCode) {
			return DeviceModel.real(model)
		} else {
			return DeviceModel.unrecognized(modelCode)
		}
	}

	static var modelType: DeviceModel.Model? {
		return UIDevice.model.model
	}

	static func isDevice(ofType model: DeviceModel.Model) -> Bool {
		return UIDevice.modelType == model
	}
}

public enum DeviceModel {
	case simulator(Model)
	case unrecognizedSimulator(String)
	case real(Model)
	case unrecognized(String)

	public enum Model: String {
		case iPod1 = "iPod 1"
		case iPod2 = "iPod 2"
		case iPod3 = "iPod 3"
		case iPod4 = "iPod 4"
		case iPod5 = "iPod 5"
		case iPad2 = "iPad 2"
		case iPad3 = "iPad 3"
		case iPad4 = "iPad 4"
		case iPhone4 = "iPhone 4"
		case iPhone4S = "iPhone 4S"
		case iPhone5 = "iPhone 5"
		case iPhone5S = "iPhone 5S"
		case iPhone5C = "iPhone 5C"
		case iPadMini1 = "iPad Mini 1"
		case iPadMini2 = "iPad Mini 2"
		case iPadMini3 = "iPad Mini 3"
		case iPadAir1 = "iPad Air 1"
		case iPadAir2 = "iPad Air 2"
		case iPadPro9_7 = "iPad Pro 9.7\""
		case iPadPro9_7_cell = "iPad Pro 9.7\" cellular"
		case iPadPro10_5 = "iPad Pro 10.5\""
		case iPadPro10_5_cell = "iPad Pro 10.5\" cellular"
		case iPadPro12_9 = "iPad Pro 12.9\""
		case iPadPro12_9_cell = "iPad Pro 12.9\" cellular"
		case iPhone6 = "iPhone 6"
		case iPhone6plus = "iPhone 6 Plus"
		case iPhone6S = "iPhone 6S"
		case iPhone6Splus = "iPhone 6S Plus"
		case iPhoneSE = "iPhone SE"
		case iPhone7 = "iPhone 7"
		case iPhone7plus = "iPhone 7 Plus"
		case iPhone8 = "iPhone 8"
		case iPhone8plus = "iPhone 8 Plus"
		case iPhoneX = "iPhone X"
		case iPhoneXR
		case iPhoneXS
		case iPhoneXSMax
		case iPhone11
		case iPhone11Pro
		case iPhone11ProMax
		case iPhoneSE2
		case iPhone12mini
		case iPhone12
		case iPhone12Pro
		case iPhone12ProMax
		case iPhone13mini
		case iPhone13
		case iPhone13Pro
		case iPhone13ProMax

		init?(modelCode: String) {
			switch modelCode {
			case "iPod1,1": self = .iPod1
			case "iPod2,1": self = .iPod2
			case "iPod3,1": self = .iPod3
			case "iPod4,1": self = .iPod4
			case "iPod5,1": self = .iPod5
			case "iPad2,1": self = .iPad2
			case "iPad2,2": self = .iPad2
			case "iPad2,3": self = .iPad2
			case "iPad2,4": self = .iPad2
			case "iPad2,5": self = .iPadMini1
			case "iPad2,6": self = .iPadMini1
			case "iPad2,7": self = .iPadMini1
			case "iPhone3,1": self = .iPhone4
			case "iPhone3,2": self = .iPhone4
			case "iPhone3,3": self = .iPhone4
			case "iPhone4,1": self = .iPhone4S
			case "iPhone5,1": self = .iPhone5
			case "iPhone5,2": self = .iPhone5
			case "iPhone5,3": self = .iPhone5C
			case "iPhone5,4": self = .iPhone5C
			case "iPad3,1": self = .iPad3
			case "iPad3,2": self = .iPad3
			case "iPad3,3": self = .iPad3
			case "iPad3,4": self = .iPad4
			case "iPad3,5": self = .iPad4
			case "iPad3,6": self = .iPad4
			case "iPhone6,1": self = .iPhone5S
			case "iPhone6,2": self = .iPhone5S
			case "iPad4,1": self = .iPadAir1
			case "iPad4,2": self = .iPadAir2
			case "iPad4,4": self = .iPadMini2
			case "iPad4,5": self = .iPadMini2
			case "iPad4,6": self = .iPadMini2
			case "iPad4,7": self = .iPadMini3
			case "iPad4,8": self = .iPadMini3
			case "iPad4,9": self = .iPadMini3
			case "iPad6,3": self = .iPadPro9_7
			case "iPad6,11": self = .iPadPro9_7
			case "iPad6,4": self = .iPadPro9_7_cell
			case "iPad6,12": self = .iPadPro9_7_cell
			case "iPad6,7": self = .iPadPro12_9
			case "iPad6,8": self = .iPadPro12_9_cell
			case "iPad7,3": self = .iPadPro10_5
			case "iPad7,4": self = .iPadPro10_5_cell
			case "iPhone7,1": self = .iPhone6plus
			case "iPhone7,2": self = .iPhone6
			case "iPhone8,1": self = .iPhone6S
			case "iPhone8,2": self = .iPhone6Splus
			case "iPhone8,4": self = .iPhoneSE
			case "iPhone9,1": self = .iPhone7
			case "iPhone9,2": self = .iPhone7plus
			case "iPhone9,3": self = .iPhone7
			case "iPhone9,4": self = .iPhone7plus
			case "iPhone10,1": self = .iPhone8
			case "iPhone10,2": self = .iPhone8plus
			case "iPhone10,3": self = .iPhoneX
			case "iPhone10,6": self = .iPhoneX
			case "iPhone11,8": self = .iPhoneXR
			case "iPhone11,2": self = .iPhoneXS
			case "iPhone11,4", "iPhone11,6": self = .iPhoneXSMax
			case "iPhone12,1": self = .iPhone11
			case "iPhone12,3": self = .iPhone11Pro
			case "iPhone12,5": self = .iPhone11ProMax
			case "iPhone12,8": self = .iPhoneSE2
			case "iPhone13,1": self = .iPhone12mini
			case "iPhone13,2": self = .iPhone12
			case "iPhone13,3": self = .iPhone12Pro
			case "iPhone13,4": self = .iPhone12ProMax
			case "iPhone14,4": self = .iPhone13mini
			case "iPhone14,5": self = .iPhone13
			case "iPhone14,2": self = .iPhone13Pro
			case "iPhone14,3": self = .iPhone13ProMax
			default: return nil
			}
		}
	}

	public var name: String {
		switch self {
		case let .simulator(model): return "Simulator[\(model.rawValue)]"
		case let .unrecognizedSimulator(s): return "UnrecognizedSimulator[\(s)]"
		case let .real(model): return model.rawValue
		case let .unrecognized(s): return "Unrecognized[\(s)]"
		}
	}

	public var model: DeviceModel.Model? {
		switch self {
		case let .simulator(model): return model
		case let .real(model): return model
		case .unrecognizedSimulator: return nil
		case .unrecognized: return nil
		}
	}
}
