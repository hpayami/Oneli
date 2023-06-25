//
//  Game05View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/16/23.
//
 
import SwiftUI
 

struct Game05View: View {
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
				
				VStack(spacing: 8){
					HStack{
						Image("Oneli")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(width: 38 , height: 16)
							.foregroundColor(Color("Secondary"))
							.padding([.top,.leading], 1)
						Spacer()
					}
					 
					HStack{
						
						
						Text("This game can improve your short memory.")
						
							.foregroundColor(.black)
							.font(.custom("MarkPro", size: 28))
							.fixedSize(horizontal: false, vertical: true)
							.padding([.bottom,.leading], 1)
						Spacer()
						
						
						
					}
				}
				.frame(width: .infinity,height: 58).padding(.all).padding()
				.padding(.top,62)
			}.padding(.top,20)
				.padding(.bottom,86)
			
			Spacer()
			VStack{
				EmptyState()
			}
				
			Spacer()
			
			
				//footer
			
			
			VStack{
				HStack (spacing: 24){
					
					
					
					Button {
						
					} label: {
						Text("Skip")
							.font(.custom("MarkPro", size: 17))
							.bold()
							.foregroundColor(Color(.black))
							.frame(width: 159, height: 50)
							.background(
								Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.12))
						
						
					}.cornerRadius(25)
					
					Button {
						
					} label: {
						Text("Play")
							.font(.custom("MarkPro", size: 17))
							.bold()
							.foregroundColor(Color(.black))
							.frame(width: 159, height: 50)
							.background(
								Color(red: 1, green: 1, blue: 1).opacity(1))
						
						
					}.cornerRadius(25)
					
					
					
				}
				.padding([.trailing,.leading],24)
				.padding(.bottom,45)
				
				.cornerRadius(25)
			}.padding([.top,.bottom], 20)
			
			
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1))
		.edgesIgnoringSafeArea(.all)
			//.background{
			//			VStack{
			//				VStack{
			//					Circle()
			//						.fill(Color(.blue))
			//						.scaleEffect(0.7, anchor: .topLeading)
			//						.offset(y: -219)
			//						.blur(radius: 120)
			//					Circle()
			//						.fill(Color(.red))
			//						.scaleEffect(0.7, anchor: .topTrailing)
			//						.offset(y: -356)
			//						.blur(radius: 120)
			//
			//				}
			//				Rectangle()
			//					.fill(.clear)
			//			}.ignoresSafeArea()
			//}
		
		.statusBarHidden()
		
		
	}
	
	
	
	
}

struct Game05View_Previews: PreviewProvider {
	static var previews: some View {
		Game05View()
			.statusBarHidden()
	}
}
