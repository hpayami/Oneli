//
//  ProfileView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 2/13/23.
//

import SwiftUI
import UIKit
struct ProfileView: View {
	@Environment(\.presentationMode) var presentationMode
	@State var isInvitedPresented: Bool = false
	@State var hstackColor1: Color? = Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1)
	@State var hstackColor2: Color? = Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1)
	@State var hstackColor3: Color? = Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1)
	@State var hstackColor4: Color? = Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1)
	var body: some View {
		VStack {
		 
			VStack {
				
				HStack {
						Button{
							presentationMode.wrappedValue.dismiss()
						} label: {
							Image("Back")
								.resizable()
								.aspectRatio(contentMode: .fit)
								.frame(width: 40, height: 40)
								.cornerRadius(10)
						}
						
						
						Spacer()
				}.padding(.top,66)
					.padding(.leading,24)
				HStack {
					Image("Profile")
					
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: 100, height: 100)
					
						.background(Color.white.opacity(1))
						.cornerRadius(24)
					Spacer()
				}
					.padding(.top,48)
					.padding(.leading,24)
				HStack {
					Text("Amanda")
						.font(.custom("MarkPro", size: 34))
						.bold()
					Spacer()
				}.padding(.top,16)
					.padding(.leading,24)
				HStack {
					Text("Glen")
						.font(.custom("MarkPro", size: 34))
						.bold().foregroundColor(Color("GrayPastel"))
					Spacer()
				}.padding(.top,0)
					.padding(.leading,24)
				HStack {
					Text("Joind 3 days ago.")
						.font(.custom("MarkPro", size: 13)).foregroundColor(Color("GrayPastel"))
					Spacer()
				}.padding(.top,0)
					.padding(.leading,24)
				Divider()
				
				// Set Goal
				HStack {
					Button {
						hstackColor1 = Color("Teriary")
						Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { _ in
							hstackColor1 = Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1)
						}
						
					} label: {
						HStack {
							Image("PersonalID")
								.frame(width: 40, height: 40)
						}
						.background(Color("VioletPastel"))
						.cornerRadius(10)
						
						Text("Your Account")
							.font(.custom("MarkPro-Medium", size: 17))
							.foregroundColor(.black)
						Spacer()
						
						Image("Chevron")
					}
				}.background(hstackColor1)
					.cornerRadius(15)
				// Invite Your Friends
				HStack {
					
					Button {
						hstackColor2 = Color("Teriary")
						Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { _ in
							hstackColor2 = Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1)
							
						}
						
						isInvitedPresented = true
					 
					} label: {
						HStack {
							Image("Invite")
								.frame(width: 40, height: 40)
						}
						.background(Color("OrangePastel"))
						.cornerRadius(10)
						
						Text("Invite Your Friends")
							.font(.custom("MarkPro-Medium", size: 17))
							.foregroundColor(.black)
						Spacer()
						
						Image("Chevron")
					}
				}.background(hstackColor2)
					.cornerRadius(15)
				// Support
				HStack {
					Button {
						hstackColor3 = Color("Teriary")
						Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { _ in
							hstackColor3 = Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1)
						}
						
					} label: {
						HStack {
							Image("Support")
								.frame(width: 40, height: 40)
						}
						.background(Color("GreenPastel"))
						.cornerRadius(10)
						
						Text("Support")
							.font(.custom("MarkPro-Medium", size: 17))
							.foregroundColor(.black)
						Spacer()
						
						Image("Chevron")
					}
				}.background(hstackColor3)
					.cornerRadius(15)
				// Setting
				HStack {
					Button {
						hstackColor4 = Color("Teriary")
						Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { _ in
							hstackColor4 = Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1)
						}
					} label: {
						HStack {
							Image("Settings")
								.frame(width: 40, height: 40)
						}
						.background(Color("GrayPastel"))
						.cornerRadius(10)
						
						Text("Settings")
							.font(.custom("MarkPro-Medium", size: 17))
							.foregroundColor(.black)
						Spacer()
						
						Image("Chevron")
					}
				}.background(hstackColor4)
					.cornerRadius(15)
				
			}.padding()
			
			Spacer()
		}.background(Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1))
			.edgesIgnoringSafeArea(.all)
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		Divider()
			.statusBarHidden()
	}
}

struct ProfileView_Previews: PreviewProvider {
	static var previews: some View {
		ProfileView()
			.statusBarHidden()
	}
}
