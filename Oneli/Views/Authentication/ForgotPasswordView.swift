//
//  ForgotPasswordView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 2/22/23.
//

import SwiftUI

	struct ForgotPasswordView: View {
		@State private var email: String = ""
		@Environment(\.presentationMode) var presentationMode
		var body: some View {
			VStack{
				
			 

				VStack{
				HStack {
					Button {
						presentationMode.wrappedValue.dismiss()
					} label: {
						Image("Back")
							.cornerRadius(15)
							.padding(.leading,3)
					}
					
					Spacer()
				}.padding([.trailing, .leading], 24)
					.padding(.top, 7)
				.padding(.bottom, 48)
					Spacer()
				}
				Spacer()
				ScrollView(.vertical,showsIndicators: false) {
					HStack{
						TextField("me@Oneli.app", text: $email)
							.font(.custom("MarkPro-Medium", size: 17))
							.padding()
							.background(Color.white)
							.cornerRadius(25)
							.overlay(
								RoundedRectangle(cornerRadius: 25)
									.stroke(Color.gray, lineWidth: 2)
								
							)
							.padding(.horizontal)
							.keyboardType(.emailAddress)
							.onAppear {
								UITextField.appearance().clearButtonMode = .whileEditing
							}
						
					}
					HStack{
						Button(action: resetPassword) {
							Text("Reset your password")
								.font(.custom("MarkPro-Medium", size: 17))
								.foregroundColor(Color(.black))
								.bold()
						}.frame(width: 294 ,height: 50)
						
							.background(Color("Teriary"))
							.cornerRadius(25)
							.padding(.horizontal)
					}.frame(width: 294 ,height: 50)
						.padding(.horizontal)
				}
				 
			}.frame(maxWidth: .infinity,maxHeight: .infinity)
				.statusBarHidden()
			
		}
		
		private func resetPassword() {
				// Implement your reset password logic here
		}
	}

 
struct ForgotPasswordView_Previews: PreviewProvider {
	static var previews: some View {
		ForgotPasswordView()
			.statusBarHidden()
	}
}
