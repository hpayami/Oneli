//
//  MessageVM.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 5/1/23.
//

import Foundation

//
//class MessageViewModel: ObservableObject {
//	@Published var messages : [Message] = []
//
//	func getUserMessage() {
//		guard let url = URL(string: "https://oneli.app/api/history?userId=clh32gmad0000uuqw2vu5sqcg") else { return }
//
//		let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
//			guard let data = data, error == nil  else { return }
//
//
//			do {
//
//				let messages = try? JSONDecoder().decode(Messages.self, from: data)
//				DispatchQueue.main.async {
//					self?.messages = messages
//				}
//
//			} catch {
//				print(error)
//			}
//		}
//		task.resume()
//	}
//
//}
