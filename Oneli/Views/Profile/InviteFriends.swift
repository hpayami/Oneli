//
//  InviteFriends.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/3/23.
//

import SwiftUI

struct InviteFriends: View {
	
	@Environment(\.presentationMode) var presentationMode
	@State private var isPresented = false
    var body: some View {
		ZStack{
			Color("Background2")
				.edgesIgnoringSafeArea(.all)
				// Header
			VStack{
			 Spacer()
					VStack{
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
							}.padding(20.0)
						VStack{
							HStack{
								oneliAnimation(isRotating: true).scaleEffect(1.5)
							}
							
						}.frame(width:342 ,height: 342)
						Spacer()
						HStack{
							Text("Looking forward to meeting your friends")
								.font(.custom("MarkPro" ,size: 28).weight(.bold))
								.multilineTextAlignment(.center)
							
						}
						 
						HStack{
							Text("Keep track of your favorite activities. Throughout the journey, I'll guide you.")
								.font(.custom("MarkPro" ,size: 15))
								.multilineTextAlignment(.center)
								.foregroundColor(Color("Secondary"))
						}
						Spacer(minLength: 48)
						HStack{
							Button {
									//OnboardingView2(showPicker: true)
							} label: {
								Text("Invite Friends")
									.font(.custom("MarkPro", size: 17))
									.bold()
								
									.foregroundColor(.black)
							}
							.frame(width: 342 ,height: 50 )
							.background(Color(.white))
							.cornerRadius(25)
							.padding()
						}
						 
					}.padding([.top], 24)
				
			}
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.statusBarHidden()
    }
}

struct InviteFriends_Previews: PreviewProvider {
    static var previews: some View {
        InviteFriends()
			.statusBarHidden()
    }
}
