//
//  Onboarding10View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/15/23.
//

import SwiftUI

@available(iOS 16.4, *)
struct Onboarding10View: View {
	
	
	@Environment(\.presentationMode) var presentationMode
	@State var isRotating = true
	@State var isPresented1 = false
	@State var isPresented2 = false
	@State var isPresented3 = false
	@State var isPresented4 = false
	 
	@Environment(\.dismiss) private var dismiss
	
	
	
	var body: some View {
		NavigationView{
		VStack{
			
			VStack{
				
				HStack {
					Spacer()
					Button {
						presentationMode.wrappedValue.dismiss()
					} label: {
						Image("Close")
							.padding(.leading,3)
					}
				}.padding([.trailing, .leading], 24)
					.padding(.top, 7)
					.padding(.bottom, 48)
				
				VStack{
					HStack{
						Image("Oneli")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(width: 38 , height: 16)
							.foregroundColor(Color("Secondary"))
							.padding([.top,.leading], 1)
						Spacer()
					}.padding(.horizontal)
						.frame(width: .infinity)
					
					
					HStack{
						
						
						
						Text("What did you drink today?")
						
							.foregroundColor(.black)
							.font(.custom("MarkPro", size: 28))
							.multilineTextAlignment(.leading)
							.padding()
						
						
						
						Spacer()
					}.padding(.vertical)
						.frame(width: .infinity)
				}.frame(width: .infinity)
				
				
			}.padding([.top],20)
			
			ScrollView(.vertical, showsIndicators: false){
				
				
				
				HStack{
					HStack{
						Button {
							isPresented1 = true
						} label: {
							VStack(spacing: 28){
								HStack{
									Image("Water")
										.padding(.leading)
									
									Spacer()
								}
								
								HStack{
									Text("Water")
										.foregroundColor(.black)
										.padding(.leading,20)
									Spacer()
								}
							}
						}
						
					}.frame(width: 165 ,height: 124)
						.background(Color("Background1"))
						.cornerRadius(20)
						.sheet(isPresented: $isPresented1) {
							SheetShare(textSelected: "Water")
								.presentationDetents([ .medium])
								.presentationDragIndicator(.hidden)
								.presentationCornerRadius(25)
							
						}
					HStack{
						Button {
							isPresented2 = true
						} label: {
							VStack(spacing: 28){
								HStack{
									Image("Caffeine")
										.padding(.leading)
									
									Spacer()
								}
								
								HStack{
									Text("Coffee")
										.foregroundColor(.black)
										.padding(.leading,20)
									Spacer()
								}
							}
						}
						
					}.frame(width: 165 ,height: 124)
						.background(Color("Background1"))
						.cornerRadius(20)
						.sheet(isPresented: $isPresented2) {
							SheetShare(textSelected: "Caffeine")
								.presentationDetents([ .medium])
								.presentationDragIndicator(.hidden)
								.presentationCornerRadius(25)
							
						}
				}.padding(.horizontal)
				HStack{
					HStack{
						Button {
							isPresented3 = true
						} label: {
							VStack(spacing: 28){
								HStack{
									Image("Alcoholic")
										.padding(.leading)
									
									Spacer()
								}
								
								HStack{
									Text("Alcoholic")
										.foregroundColor(.black)
										.padding(.leading,20)
									Spacer()
								}
							}
						}
						
					}.frame(width: 165 ,height: 124)
						.background(Color("Background1"))
						.cornerRadius(20)
						.sheet(isPresented: $isPresented3) {
							SheetShare(textSelected: "Alcoholic")
								.presentationDetents([ .medium])
								.presentationDragIndicator(.hidden)
								.presentationCornerRadius(25)
						}
					HStack{
						Button {
							isPresented4 = true
						} label: {
							VStack(spacing: 28){
								HStack{
									Image("Carbonate")
										.padding(.leading)
									
									Spacer()
								}
								
								HStack{
									Text("Carbonated")
										.foregroundColor(.black)
										.padding(.leading,20)
									Spacer()
								}
							}
						}
						
					}.frame(width: 165 ,height: 124)
						.background(Color("Background1"))
						.cornerRadius(20)
						.sheet(isPresented: $isPresented4) {
							SheetShare(textSelected: "Workout")
								.presentationDetents([ .medium])
								.presentationDragIndicator(.hidden)
								.presentationCornerRadius(25)
						}
				}.padding(.horizontal)

				

				
			}
			
		}
		
		
		.frame(maxWidth: .infinity,maxHeight: .infinity)
		.background(Color("Background3"))
		.edgesIgnoringSafeArea(.all)
	}.frame(maxWidth: .infinity, maxHeight: .infinity)
//		.overlay(content: {
//			VStack{
//				TemplateTop()
//					.edgesIgnoringSafeArea(.all)
//				Spacer()
//			}
//		})
//
		.edgesIgnoringSafeArea(.all)
		.statusBarHidden()
		.navigationBarHidden(true)
		.navigationBarBackButtonHidden()
		
	}
	
	
	
}

@available(iOS 16.4, *)
struct Onboarding10View_Previews: PreviewProvider {
	static var previews: some View {
		Onboarding10View()
			.statusBarHidden()
		
	}
}

struct SheetShare08: View {
	@State var options = ["Daily" , "2 Times in a week", "3 Times in a week" ,"4 Times in a week" ,"Weekly", "2 Times in a mounth" ,"Monthly"]
	@State var selectedItem = "Daily"
	@State var isPresented = false
	@State var textSelected = ""
	var body: some View{
		VStack {
			VStack{
				HStack{
					
					Text(textSelected)
						.foregroundColor(Color("Primary"))
						.font(.custom("MarkPro", size: 20))
						.bold()
						.multilineTextAlignment(.leading)
						.padding()
					Spacer()
				}
			 
			 
				Picker("Pick a time", selection: $selectedItem) { // 3
					ForEach(options, id: \.self) { item in // 4
						Text(item) // 5
					}
				}.pickerStyle(.wheel)
			}.padding(.all)
				.frame(width: .infinity)
				//OK Button
			VStack{
				
				Button {
					isPresented.toggle()
					
				} label: {
					Text("Ok")
						.font(.custom("MarkPro", size: 17))
						.bold()
						.foregroundColor(.primary)
					
					
				}.frame(width: 342,height: 50)
					.cornerRadius(25)
				
			}.background(Color("Background3"))
				.frame(width: 342 ,height: 50 )
				.cornerRadius(25)
				.padding([.top], 20)
				.padding([.bottom], 49)
				.padding([.trailing, .leading], 24)
			
	}
				//.overlay(content: {
//			VStack{
//				TemplateTop()
//					.edgesIgnoringSafeArea(.all)
//				Spacer()
//			}
//		})
	}
}
