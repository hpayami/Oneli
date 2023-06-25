//
//  OneliChatView.swift.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/15/23.
//

import SwiftUI
import Network


struct OneliChatView: View {
	
	@State private var isTyping = false
	@Environment(\.presentationMode) var presentationMode
	@FocusState private var isTextFieldFocused: Bool
	@State var isRotating = true
	@State var isPresented = true
	@Environment(\.dismiss) private var dismiss

	//@StateObject var viewModel = MessageViewModel()
		 
	
	@State var messages = [Message]()
	
	//@State var messages = [Messages]()
	@State var newMessage: String = ""
	var body: some View {

		VStack{
			
			
				
				VStack{
					HStack(spacing: 8){
						Image("Oneli")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(width: 38 , height: 16)
							.foregroundColor(Color("Secondary"))
						
						Spacer()
					}
					
					HStack{
						
						
						Text("I’m all ears, talk to me.")
						
							.foregroundColor(.black)
							.font(.custom("MarkPro", size: 28))
							.fixedSize(horizontal: false, vertical: true)
						
						Spacer()
						
						
						
					}
				}.frame(width: 342,height: 58)
					.padding(.top,40)

				.padding(.bottom)
			 
			VStack{
				ScrollView(.vertical, showsIndicators: false){
					
					
					
					VStack(alignment: .leading, spacing:40) {
						ForEach(messages, id: \.id) { message in



							if message.fromUser == false {
								let newMessage = message.content.replacingOccurrences(of: "[USER]", with: "")
								VStack{
									VStack(spacing:3){
										Text(newMessage)
											.font(.custom("MarkPro", size: 17))
											.fixedSize(horizontal: false, vertical: true)
											.padding()
											.background(Color.white)
											.cornerRadius(8)
											.foregroundColor(.black)
										Text(message.createdAt)
											.font(.custom("MarkPro", size: 11))
											.fixedSize(horizontal: false, vertical: true)
											.padding()


											.foregroundColor(.black)
									}.cornerRadius(12)
										.frame(width:screenBounds().width - 30 , height: 45 , alignment: .leading)
										.padding(.horizontal)
										.padding(.bottom,40)
										.padding()

								}
							}
							else{
								VStack(spacing:1){
									Text(message.content)
										.font(.custom("MarkPro", size: 17))
										.fixedSize(horizontal: false, vertical: true)
										.padding()
										.background(Color.blue)
										.cornerRadius(8)
										.foregroundColor(.white)
									Text(message.createdAt)
										.font(.custom("MarkPro", size: 11))
										.fixedSize(horizontal: false, vertical: true)
										.padding()
										.cornerRadius(8)
										.foregroundColor(.black)
								}.cornerRadius(12)
									.frame(width:screenBounds().width - 30 , height: 45 , alignment: .trailing)
									.padding(.horizontal)
									.padding(.bottom,40)
									.padding()
							}
						}
					}
					
					.onAppear() {
						fetchData()
						
					}
					
					.padding(.horizontal, 10)
					
					
					
				}
					//footer
				
				VStack{
					HStack (spacing: 5){
						
						TextField("Type Here...", text: $newMessage,axis: .vertical)
						
							.font(.custom("MarkPro-Medium", size: 17))
							.padding()
							.background(Color(red: 238/255, green: 242/255, blue: 245/255).opacity(1))
							.cornerRadius(25)
							.overlay(
								RoundedRectangle(cornerRadius: 25)
									.stroke(isTextFieldFocused ? Color("Secondary").opacity(1) : Color("Teriary").opacity(1), lineWidth: 1)
								
								
							)
						
							.onTapGesture {
								self.endEditing(true)
							}
							.onSubmit {
								isTextFieldFocused = false
							}
							.onAppear {
								UITextField.appearance().clearButtonMode = .whileEditing
							}
						
							.focused($isTextFieldFocused)
							.padding(.horizontal)
							.keyboardType(.alphabet)
							.imageScale(.medium)
						
						
						
						Button {
							
						} label: {
							Image(systemName: "arrow.up")
								.font(.custom("MarkPro", size: 17))
								.bold()
								.foregroundColor(.secondary)
								.frame(width: 50, height: 50)
							
							
							
							
							
						}.background(
							Color( red: 43/255 ,green: 49/255 , blue:61/255 ).opacity(0.05))
						.cornerRadius(100)
						
						.padding(.trailing,24)
						
						
						
					}
					.padding([.trailing,.leading], 20)

					
					.cornerRadius(25)
				}
				
			}
		}.padding()




		.frame(maxWidth: .infinity, maxHeight: .infinity)
			.background(Color(red: 238/255, green: 242/255, blue: 245/255).opacity(1))
			.edgesIgnoringSafeArea(.all)
//		.overlay(content: {
//			VStack{
//				TemplateTop()
//					.edgesIgnoringSafeArea(.all)
//				Spacer()
//			}
//		})
//	

		.statusBarHidden()
		.navigationBarBackButtonHidden()

	}
	 
		func fetchData() {
			guard let url = URL(string: "https://oneli.app/api/history?userId=clh32gmad0000uuqw2vu5sqcg") else {
				return
			}

			URLSession.shared.dataTask(with: url) { data, response, error in
				if let data = data {
					do {
						
						let decodedData = try JSONDecoder().decode(MessageResponse.self, from: data)

						let messages = decodedData.messages
						DispatchQueue.main.async {
							self.messages = messages
						}
					} catch {
						print(error)
					}
				}
			}.resume()
		}
 }


struct OneliChatView_Previews: PreviewProvider {
    static var previews: some View {
		OneliChatView()
			.statusBarHidden()
    }
}





//HStack{
//	Text("From: \(message.fromUser ? "User" : "Bot")")
//		.font(.custom("MarkPro", size: 17))
//		.fixedSize(horizontal: false, vertical: true)
//		.padding(8)
//		.background(Color.white)
//		.cornerRadius(8)
//		.foregroundColor(.black)
//}.cornerRadius(12)
//	.frame(width:screenBounds().width - 30 , height: 45 , alignment: .leading)
//	.padding(.horizontal)
//
//HStack{
//	Text(message.content)
//		.font(.custom("MarkPro", size: 17))
//		.fixedSize(horizontal: false, vertical: true)
//		.padding(8)
//		.background(Color.blue)
//		.cornerRadius(8)
//		.foregroundColor(.white)
//}.cornerRadius(12)
//	.frame(width:screenBounds().width - 30 , height: 45 , alignment: .trailing)
//.padding(.horizontal)
