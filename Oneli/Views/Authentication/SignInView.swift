//
//  SignInView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/25/23.
//

 
import SwiftUI

@available(iOS 16.4, *)
struct SignInView: View {
	@State var email: String = ""
	@State var password: String = ""
	@State var isLoggedIn: Bool = false
	@State private var emailFieldIsFocused: Bool = false
	@State private var showingForgotPassword = false
	@Environment(\.presentationMode) var presentationMode
	@State var isRotating = true
	@State private var showError = false

	var body: some View {
		NavigationView{
			GeometryReader { geo in
			VStack {
				VStack{
					HStack {
						Button {

							presentationMode.wrappedValue.dismiss()

						} label: {
							Image("Back")
								.padding(.leading, 3)
						}

						Spacer()
					}.padding([.trailing, .leading], 24)

						.padding()


				}.padding([.top, .bottom], 20)

				ScrollView {
						// Label Email
					HStack {
						Text("Enter your email")
							.font(.custom("MarkPro", size: 28))

					}.padding(.top, 50)
						.padding(.bottom, 30)
						// Button Back
					Spacer()
					
					

						// Text Email and Password
					
					VStack {
						HStack {
							TextField("me@Oneli.app", text: $email)
								.font(.custom("MarkPro", size: 17))
								.padding()
								.background(Color("Background2"))
								.foregroundColor(Color("Teriary"))
								.cornerRadius(25)
								.overlay(RoundedRectangle(cornerRadius: 25).stroke(Color("Secondary"), lineWidth: 1))
								.padding(.horizontal)
								.keyboardType(.namePhonePad)
								.imageScale(.medium)
								.onAppear {
									UITextField.appearance().clearButtonMode = .whileEditing
								}
							if email == "" {
								
							}
							else
							{
							
							}
						}.padding([.trailing,.leading], 45)
						

						
						Spacer(minLength: 64)
						
						if showError {
							Text("Incorrect email")
								.foregroundColor(Color.red)
								.font(.system(size: 12))
						} else {
							Spacer()
						}
						
						HStack{
							Button(action: {
								if self.email == "admin"{
										// login successful, navigate to next screen
									isLoggedIn = true
									
								} else {
									self.showError = true
								}
								
							}){
								Text("Next")
									.font(.custom("MarkPro-Bold", size: 17))
									.foregroundColor(Color("Secondary"))
									.frame(maxWidth: .infinity)
									.padding()
									.background(Color("Teriary"))
									.cornerRadius(25)

							}.padding([.trailing,.leading], 45)
							
						}.background(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.05))
							.cornerRadius(25)
							.padding([.trailing,.leading], 45)
						Button(action: { showingForgotPassword = true }) {
							Text("Forgot your password?")
								.font(.custom("MarkPro-Medium", size: 17))
								.foregroundColor(Color(.black))
								.bold()
						}.padding()
						
					}
					VStack{
						HStack{
							Text(".....................................")
								.frame(width:120, height: 2)
								.foregroundColor(.gray)
								.padding()
							Text("OR")
								.font(Font.custom("MarkPro-Medium", size: 15, relativeTo: .subheadline))
								.frame(width: 23, height: 20)
								.foregroundColor(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.3))
								.padding()

							Text("....................................")
								.foregroundColor(.gray)
								.frame(width:120, height: 2)
								.padding()
						}
					}
					

						// Button Login Apple
					HStack {
						NavigationLink {
							Onboarding03View(name: "", family: "")
						} label: {
							HStack {
								Image("Apple")
								Text("Continue with Apple").font(Font.custom("MarkPro", size: 17))
									.bold()
									.foregroundColor(.white)
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
		}
			.background(Color("Background2"))
			.edgesIgnoringSafeArea(.all)
		}
		.frame(maxWidth: .infinity ,maxHeight: .infinity)
//		.overlay(content: {
//			VStack{
//				TemplateTop()
//					.edgesIgnoringSafeArea(.all)
//				Spacer()
//			}
//		})
			.navigationBarBackButtonHidden()
			.statusBarHidden()
	 
	}
}

@available(iOS 16.4, *)
struct SignInView_Previews: PreviewProvider {
	static var previews: some View {
		SignInView()
			.statusBarHidden()
	}
}
