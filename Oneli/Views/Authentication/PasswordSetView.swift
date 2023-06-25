//
//  PasswordSetView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/6/23.
//

import SwiftUI

struct PasswordSetView: View {
	@State var email: String = ""
	@State var password: String = ""
	@State var isLoggedIn: Bool = false
	@State private var emailFieldIsFocused: Bool = false
	@State private var showingForgotPassword = false
	@Environment(\.presentationMode) var presentationMode
	@State var isRotating = true
	@State private var showError = false
	
	var body: some View {
		ZStack {
			 
			ScrollView {
				VStack {
						// Button Back
					Spacer()
					
					
					
					HStack {
						Button {
							presentationMode.wrappedValue.dismiss()
							
						} label: {
							Image("Back")
								.padding(.leading, 3)
						}
						
						Spacer()
					}.padding([.trailing, .leading], 24)
						.padding([.trailing, .leading], 24)
						.padding([.top, .bottom], 7)
					
						// Text Email
					HStack {
						Text("Enter your password")
							.font(.custom("MarkPro", size: 28))
						
					}.padding(.top, 50)
						.padding(.bottom, 30)
			
					
					VStack {
						 
						
						HStack {
						 
							SecureField("Password", text: $password)
								.font(.custom("MarkPro-Medium", size: 17))
								.padding()
								.background(Color("Background2"))
								.foregroundColor(Color("Teriary"))
								.cornerRadius(25)
								.overlay( RoundedRectangle(cornerRadius: 25).stroke(Color("Secondary"), lineWidth: 1))
								.padding(.horizontal)
								.keyboardType(.namePhonePad)
								.imageScale(.medium)
								.onAppear {
									UITextField.appearance().clearButtonMode = .whileEditing
								}
						}
						
						Spacer(minLength: 64)
						
						if showError {
							Text("Incorrect password.")
								.foregroundColor(Color.red)
								.font(.system(size: 12))
						} else {
							Spacer()
						}
						Button(action: { showingForgotPassword = true }) {
							Text("Forgot your password?")
								.font(.custom("MarkPro-Medium", size: 17))
								.foregroundColor(Color(.black))
								.bold()
						}.padding()
						HStack{
							Button(action: {
								if self.password == "password" {
										// login successful, navigate to next screen
									isLoggedIn = true
									
								} else {
									self.showError = true
								}
								
							}){
								Text("Log in")
									.font(.custom("MarkPro-Bold", size: 17))
									.foregroundColor(Color("Secondary"))
									.frame(maxWidth: .infinity)
									.padding()
									.background(Color("Teriary"))
									.cornerRadius(25)
									.padding(.horizontal, 20)
							}
							
						}.background(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.05))
							.cornerRadius(25)
						
						
					}.padding()
					Seperator()
					
					
						// Button Login Apple
					HStack {
						Button {
								//
						} label: {
							HStack {
								Image("Apple")
								Text("Continue with Apple").font(Font.custom("MarkPro", size: 17))
									.bold()
							}
						}
					}
					.frame(width: 294, height: 50)
					.background(Color("Primary"))
					.cornerRadius(25)
					.padding()
					
						// Button Login Google
					HStack {
						Button {
								//DO
						} label: {
							HStack {
								Image("Google")
								Text("Continue with Google").font(Font.custom("MarkPro", size: 17))
									.bold()
									.foregroundColor(.black)
							}
						}
					}.frame(width: 294, height: 50)
						.background(Color(.white))
						.cornerRadius(25)
						.padding()
				}
			}
			
			
		}.background(Color("Background2"))
		 .edgesIgnoringSafeArea(.all)
		 .frame(maxWidth: .infinity, maxHeight: .infinity)
			
			
			
		}
}

struct PasswordSetswift_Previews: PreviewProvider {
    static var previews: some View {
        PasswordSetView()
    }
}
