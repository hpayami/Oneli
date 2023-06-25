//
//  ChangePasswordView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 2/22/23.
//

import SwiftUI
 
struct ChangePasswordView: View {
	
	@State private var password: String = ""
	@State private var confirmPassword: String = ""
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
			}.padding()
			 
			ScrollView(.vertical,showsIndicators: false) {
				VStack {
					HStack{
						SecureField("Type Your Password", text: $password)
							.font(.custom("MarkPro", size: 17))
							.padding()
							.background(Color("Background2"))
							.cornerRadius(25)
							.overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.gray, lineWidth: 1))
							.padding(.horizontal)
							.keyboardType(.alphabet)
							.onAppear {
								UITextField.appearance().clearButtonMode = .whileEditing
							}
					}
					.frame(width: .infinity ,height: 50)
					
				 Spacer(minLength: 10)
					HStack{
						SecureField("Confirm Your Password", text: $confirmPassword)
							.font(.custom("MarkPro", size: 17))
							.padding()
							.background(Color("Background2"))
							.cornerRadius(25)
							.overlay(
								RoundedRectangle(cornerRadius: 25).stroke(Color.gray, lineWidth: 1))
							.padding(.horizontal)
							.keyboardType(.alphabet)
							.onAppear {
								UITextField.appearance().clearButtonMode = .whileEditing
							}
						
					}
					.frame(width: .infinity ,height: 50)
					
					Spacer(minLength: 30)
					HStack{
						Button(action: changePassword) {
							Text("Change your password")
								.font(.custom("MarkPro", size: 17))
								.foregroundColor(Color(.black))
								.bold()
						}.padding(.horizontal)
						.frame(width: .infinity ,height: 50)
							 
							.background(Color("Teriary"))
							.cornerRadius(25)
							
							
					}
					.frame(width: .infinity ,height: 50)
					 
				}
			}
			
		}.frame(maxWidth: .infinity,maxHeight: .infinity)
			.statusBarHidden()
	}
	
	private func changePassword() {
			// Implement your reset password logic here
	}
}

 


struct ChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
		ChangePasswordView()
			.statusBarHidden()
    }
}
