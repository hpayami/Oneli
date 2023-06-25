//
//  User.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/3/23.
//

 
import Foundation

struct User: Hashable {
	var name: String
	var avatar: String
	var isCurrentUser: Bool = false
}
