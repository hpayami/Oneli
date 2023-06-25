//
//  ChatBoxView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/15/23.
//

import SwiftUI
import Network
import Combine
import Foundation


//
//struct ChatView: View {
//
//
//	@State var newMessageText = ""
//	@StateObject var viewModel = MessageViewModel()
//
//
//	var body: some View {
//		VStack {
//
//			List{
//				ForEach(viewModel.messages, id: \.self) { item in
//
//
//						Text(item.content)
//							.foregroundColor(Color(.black))
//						Text(item.createdAt)
//
//
//				}
//			}.onAppear(){
//				viewModel.getUserMessage()
//			}
//
//
//
//
//
//
//
//			HStack {
//				TextField("Type a message...", text: $newMessageText)
//
//				Button(action: {
//						//sendMessage()
//				}) {
//					Text("Send")
//				}
//			}	.padding()
//		}
//		}
//
//
//	func fetchMessages<T: Decodable>() async -> T? {
//		let url = URL(string: "https://oneli.app/api/history?userId=clh32gmad0000uuqw2vu5sqcg")!
//		let request = URLRequest(url: url)
//		do {
//			let (data, response) = try await URLSession.shared.data(for: request)
//			guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
//					// throw URLError(.badServerResponse)   //  todo
//				print(URLError(.badServerResponse))
//				return nil
//			}
//			let results = try JSONDecoder().decode(T.self, from: data)
//			return results
//		}
//		catch {
//			return nil
//		}
//	}
//	}




//	func sendMessage() {
//		guard let url = URL(string: "https://oneli.app/api/history?userId=clh32gmad0000uuqw2vu5sqcg") else { return }
//
//		var request = URLRequest(url: url)
//		request.httpMethod = "POST"
//		request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//
//		let message = ["text": newMessageText]
//		let encoder = JSONEncoder()
//
//		do {
//			let jsonData = try encoder.encode(message)
//			request.httpBody = jsonData
//		} catch {
//			print(error.localizedDescription)
//			return
//		}
//
//		URLSession.shared.dataTask(with: request) { data, response, error in
//			if let _ = data, let _ = response {
//				DispatchQueue.main.async {
//
//					s.newMessageText = ""
//				}
//			} else {
//				print(error?.localizedDescription ?? "Unknown error")
//			}
//		}.resume()
//	}


 //}


//struct ChatView_Previews: PreviewProvider {
//
//
//	static var previews: some View {
//		ChatView()
//	}
//}

extension URLSession {
	func fetchData<T: Decodable>(for url: URL, completion: @escaping (Result<T, Error>) -> Void) {
		self.dataTask(with: url) { (data, response, error) in
			if let error = error {
				completion(.failure(error))
			}

			if let data = data {
				do {
					let object = try JSONDecoder().decode(T.self, from: data)
					completion(.success(object))
				} catch let decoderError {
					completion(.failure(decoderError))
				}
			}
		}.resume()
	}
}






