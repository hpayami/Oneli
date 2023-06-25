//
//  LoginView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 2/22/23.
//

import SwiftUI
import AuthenticationServices

struct LoginView: View {
	
	@StateObject private var loginVM = LoginViewModel()
	var body: some View {
		VStack {
			VStack{
				HStack{
					TextField("Username" , text: $loginVM.username)
				}
				HStack{
					SecureField("Password" , text: $loginVM.password)
				}
			}
			VStack{
				
				HStack{
					Button("Login") {
						//loginVM.login()
					}.buttonBorderShape(.capsule)
						.foregroundColor(.blue)
				}
			 
				HStack{
					Button("SignOut") {
						
					}.buttonBorderShape(.capsule)
						.foregroundColor(.blue)
				}
				 
			}.buttonStyle(.borderedProminent)
		}
		.statusBarHidden()
	}
}

struct LoginView_Previews: PreviewProvider {
	static var previews: some View {
		LoginView().navigationBarHidden(true)
			.statusBarHidden()
	}
}
