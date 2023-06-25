//
//  Message.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/3/23.
//
 
import Foundation

	// MARK: - Message
//struct Message: Codable {
//	let id, response: String
//	let messages: [MessageElement]
//}
//
//	// MARK: - MessageElement
//struct MessageElement: Codable {
//	let id, userID: String
//	let fromUser: Bool
//	let createdAt, content: String
//
//	enum CodingKeys: String, CodingKey {
//		case id
//		case userID = "userId"
//		case fromUser, createdAt, content
//	}
//}
//
//

struct Message: Codable {
	let id: String
	let userId: String
	let fromUser: Bool
	let createdAt: String
	let content: String
}

struct MessageResponse: Codable {
	let messages: [Message]
}
