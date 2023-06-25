//
//  SignUp.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 2/22/23.
//

import SwiftUI

struct SignUpView: View {
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
			Color("Background3")
				.edgesIgnoringSafeArea(.all)
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
					
					// Label Email
					HStack {
						Text("Enter your email")
							.font(.custom("MarkPro-Medium", size: 28))
						
					}.padding(.top, 50)
						.padding(.bottom, 30)
					// Text Email and Password
					
					VStack {
						HStack {
							
							
							TextField("me@Oneli.app", text: $email)
								.font(.custom("MarkPro-Medium", size: 17))
								.padding()
								.background(Color("Background2"))
								.foregroundColor(Color("Teriary"))
								.cornerRadius(25)
								.overlay(
									RoundedRectangle(cornerRadius: 25)
										.stroke(Color("Secondary"), lineWidth: 1)
								)
								.padding(.horizontal)
								.keyboardType(.emailAddress)
								.imageScale(.medium)
						}
						
						HStack {
							
							
							SecureField("Password", text: $password)
								.font(.custom("MarkPro-Medium", size: 17))
								.padding()
								.background(Color("Background2"))
								.foregroundColor(Color("Teriary"))
								.cornerRadius(25)
								.overlay(
									RoundedRectangle(cornerRadius: 25)
										.stroke(Color("Secondary"), lineWidth: 1)
								)
								.padding(.horizontal)
								.keyboardType(.namePhonePad)
								.imageScale(.medium)
							
						}
						
						Spacer(minLength: 64)
						
						if showError {
							Text("Incorrect email or password.")
								.foregroundColor(Color.red)
								.font(.system(size: 12))
						} else {
							Spacer()
						}
						
						HStack{
							Button(action: {
								if self.email == "admin" && self.password == "password" {
										// login successful, navigate to next screen
									isLoggedIn = true
									
									
									
								} else {
									self.showError = true
								}
							}) {
								Text("Next")
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
						Button(action: { showingForgotPassword = true }) {
							Text("Forgot your password?")
								.font(.custom("MarkPro-Medium", size: 17))
								.foregroundColor(Color(.black))
								.bold()
						}.padding()
						
					}.padding()
					Seperator()
					
					// SeperatorView
					
					// Button Login Apple
					HStack {
						Button {
							//
						} label: {
							HStack {
								Image("Apple")
								Text("SignUp with Apple").font(Font.custom("MarkPro", size: 17))
									.bold()
							}
						}
					}
					.frame(width: 294, height: 50)
					.background(Color(.black))
					.cornerRadius(25)
					.padding()
					
					// Button Login Google
					HStack {
						Button {
							//
						} label: {
							HStack {
								Image("Google")
								Text("SignUp with Google").font(Font.custom("MarkPro", size: 17))
									.bold()
									.foregroundColor(Color("Primary"))
							}
						}
					}.frame(width: 294, height: 50)
						.background(Color(.white))
						.cornerRadius(25)
						.padding()
				}
			} 
			
		 
			
			
		}
		
		.statusBarHidden()
	}
}

struct SignUpView_Previews: PreviewProvider {
	static var previews: some View {
		SignUpView()
			.statusBarHidden()
	}
}
