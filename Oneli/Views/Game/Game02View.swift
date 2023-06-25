//
//  Game02View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/16/23.
//

 

import SwiftUI
import Marquee

struct Game02View: View {
	@Environment(\.presentationMode) var presentationMode
	
	@State var isRotating = true
	@State var isPresented = true
	@Environment(\.dismiss) private var dismiss
	@State var newMessage: String = ""
	@State private var message = ""
	@State private var messages: [String] = []
	var body: some View {
		
		VStack{
			
			VStack{
					//Button Back
				HStack {
					Spacer()
					Button {
						presentationMode.wrappedValue.dismiss()
					} label: {
						Image("Close")
							.padding(.leading,3)
					}
					
					 
				}.padding()
				
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
						
						 
							Text("Think about the other side as well.")
							
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 28))
								.fixedSize(horizontal: false, vertical: true)
	
						Spacer()
						 
						
						
					}
				}.frame(width: 342,height: 58)
					.padding(.top,62)
			}.padding(.top,20)
				.padding(.bottom,40)
			
			Spacer()
			VStack{
				
			}
			
			
			
			
				//footer
			
			VStack{
				HStack{
					
					
					
					Button {
						
					} label: {
						Image("Music")
							.font(.custom("MarkPro", size: 17))
							.bold()
							.foregroundColor(Color(.black))
							.frame(width: 50, height: 50)
							.background(
								Color(red: 1, green: 1, blue: 1).opacity(1))
						
						
					}.cornerRadius(100)
						 
					Spacer()
					Button {
						
					} label: {
						Image("Pause")
							.font(.custom("MarkPro", size: 17))
							.bold()
							.foregroundColor(Color(.black))
							.frame(width: 50, height: 50)
							.background(
								Color(red: 1, green: 1, blue: 1).opacity(1))
						
						
					}.cornerRadius(100)
						 
					
					
				}
				.padding([.trailing,.leading],24)
				.padding(.bottom,45)
				
				
				.cornerRadius(25)
			}.padding([.top,.bottom], 20)
			
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1))
		.edgesIgnoringSafeArea(.all)
		.background{
			VStack{
				VStack{
					Circle()
						.fill(Color(.blue))
						.scaleEffect(0.7, anchor: .topLeading)
						.offset(y: -219)
						.blur(radius: 120)
					Circle()
						.fill(Color(.red))
						.scaleEffect(0.7, anchor: .topTrailing)
						.offset(y: -356)
						.blur(radius: 120)
					
				}
				Rectangle()
					.fill(.clear)
			}.ignoresSafeArea()
		}
		.statusBarHidden()
		
		
		
	}
	
	
	
	
}

struct Game02View_Previews: PreviewProvider {
	static var previews: some View {
		Game02View()
			.statusBarHidden()
	}
}
