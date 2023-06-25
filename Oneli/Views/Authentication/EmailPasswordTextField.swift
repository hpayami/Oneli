//
//  EmailPasswordTextField.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/6/23.
//

import Foundation
//import SwiftUI
//
//struct EmailPasswordTextField: View {
//	@Binding var email: String
//	@Binding var password: String
//
//	@Binding var isLoggedIn: Bool
//	@State private var showingForgotPassword = false
//
//	var body: some View {
//		HStack {
//
//
//			TextField("me@Oneli.app", text: $email)
//				.font(.custom("MarkPro-Medium", size: 17))
//				.padding()
//				.background(Color("Background2"))
//				.foregroundColor(Color("Teriary"))
//				.cornerRadius(25)
//				.overlay(
//					RoundedRectangle(cornerRadius: 25)
//						.stroke(Color("Secondary"), lineWidth: 1)
//				)
//				.padding(.horizontal)
//				.keyboardType(.emailAddress)
//				.imageScale(.medium)
//		}
//
//		HStack {
//
//
//			SecureField("Password", text: $password)
//				.font(.custom("MarkPro-Medium", size: 17))
//				.padding()
//				.background(Color("Background2"))
//				.foregroundColor(Color("Teriary"))
//				.cornerRadius(25)
//				.overlay(
//					RoundedRectangle(cornerRadius: 25)
//						.stroke(Color("Secondary"), lineWidth: 1)
//				)
//				.padding(.horizontal)
//				.keyboardType(.namePhonePad)
//				.imageScale(.medium)
//
//		}
//
//		Spacer(minLength: 64)
//
//		if showError {
//			Text("Incorrect email or password.")
//				.foregroundColor(Color.red)
//				.font(.system(size: 12))
//		} else {
//			Spacer()
//		}
//
//		HStack{
//			Button(action: {
//				if self.email == "admin" && self.password == "password" {
//						// login successful, navigate to next screen
//					isLoggedIn = true
//
//
//
//				} else {
//					self.showError = true
//				}
//			}) {
//				Text("Next")
//					.font(.custom("MarkPro-Bold", size: 17))
//					.foregroundColor(Color("Secondary"))
//					.frame(maxWidth: .infinity)
//					.padding()
//					.background(Color("Teriary"))
//					.cornerRadius(25)
//					.padding(.horizontal, 20)
//			}
//
//		}.background(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.05))
//			.cornerRadius(25)
//	}
//}
