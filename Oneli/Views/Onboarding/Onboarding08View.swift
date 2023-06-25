//
//  Onboarding08View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/27/23.
//

import SwiftUI
import Foundation
import Marquee

@available(iOS 16.4, *)
struct Onboarding08View: View {
	@Environment(\.presentationMode) var presentationMode
	@State var isRotating = true
	@State var isPresented1 = false
	@State var isPresented2 = false
	@State var isPresented3 = false
	@State var isPresented4 = false
	@State var isPresented5 = false
	@State var isPresented6 = false
	@State var isPresented7 = false
	@State var isPresented8 = false
	@State var isPresented9 = false
	@State var isPresented10 = false
	@State var isPresented11 = false
	@State var isPresented12 = false
	@Environment(\.dismiss) private var dismiss
	

	
	
	var body: some View {
		NavigationView{
		VStack {

			VStack{
					//Button Back
				HStack {
					Button {
						presentationMode.wrappedValue.dismiss()
					} label: {
						Image("Back")
							.padding(.leading,3)
					}

					Spacer()
				}.padding([.trailing, .leading], 24)
					.padding(.top, 7)
					.padding(.bottom, 48)
					.padding()

				VStack{
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
						Text("What's your weekly routine?")

							.foregroundColor(.black)
							.font(.custom("MarkPro", size: 28))
							.fixedSize(horizontal: false, vertical: true)
							.padding([.bottom,.leading], 1)
						Spacer()

					}
				}.frame(width: 342,height: 58)
			}.padding(.top,2)
				.padding(.bottom,20)



			ScrollView(.vertical, showsIndicators: false){



				HStack{
					HStack{
						Button {
							isPresented1 = true
						} label: {
							VStack(spacing: 28){
								HStack{
									Image("Alcoholic")
										.padding(.leading)

									Spacer()
								}

								HStack{
									Text("Alcohol Use")
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
							SheetShare(textSelected: "Alcohol Use")
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
									Image("WakeUp")
										.padding(.leading)

									Spacer()
								}

								HStack{
									Text("Smoking")
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
							SheetShare(textSelected: "Smoking")
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
									Image("Dating")
										.padding(.leading)

									Spacer()
								}

								HStack{
									Text("Partner Visiting")
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
							SheetShare(textSelected: "Partner Visiting" )
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
									Image("Workout")
										.padding(.leading)

									Spacer()
								}

								HStack{
									Text("Workout")
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
							SheetShare(textSelected: "Workout" )
								.presentationDetents([ .medium])
								.presentationDragIndicator(.hidden)
								.presentationCornerRadius(25)
						}
				}.padding(.horizontal)
				HStack{
					HStack{
						Button {
							isPresented5 = true
						} label: {
							VStack(spacing: 28){
								HStack{
									Image("Nature")
										.padding(.leading)

									Spacer()
								}

								HStack{
									Text("Going to Natur")
										.foregroundColor(.black)
										.padding(.leading,20)
									Spacer()
								}
							}
						}

					}.frame(width: 165 ,height: 124)
						.background(Color("Background1"))
						.cornerRadius(20)
						.sheet(isPresented: $isPresented5) {
							SheetShare(textSelected: "Going to Nature" )
								.presentationDetents([ .medium])
								.presentationDragIndicator(.hidden)
								.presentationCornerRadius(25)
						}
					HStack{
						Button {
							isPresented6 = true
						} label: {
							VStack(spacing: 28){
								HStack{
									Image("Sex Activity")
										.padding(.leading)

									Spacer()
								}

								HStack{
									Text("Sex Activity")
										.foregroundColor(.black)
										.padding(.leading,20)
									Spacer()
								}
							}
						}

					}.frame(width: 165 ,height: 124)
						.background(Color("Background1"))
						.cornerRadius(20)
						.sheet(isPresented: $isPresented6) {
							SheetShare(textSelected: "Sex Activity" )
								.presentationDetents([ .medium])
								.presentationDragIndicator(.hidden)
								.presentationCornerRadius(25)

						}

				}.padding(.horizontal)
				HStack{
					HStack{
						Button {
							isPresented7 = true
						} label: {
							VStack(spacing: 28){
								HStack{
									Image("Community")
										.padding(.leading)

									Spacer()
								}

								HStack{
									Text("Family Gathering")
										.foregroundColor(.black)
										.padding(.leading,20)
									Spacer()
								}
							}
						}

					}.frame(width: 165 ,height: 124)
						.background(Color("Background1"))
						.cornerRadius(20)
						.sheet(isPresented: $isPresented7) {
							SheetShare(textSelected: "Family Gathering" )
								.presentationDetents([ .medium])
								.presentationDragIndicator(.hidden)
								.presentationCornerRadius(25)
						}
					HStack{
						Button {
							isPresented8 = true
						} label: {
							VStack(spacing: 28){
								HStack{
									Image("Community")
										.padding(.leading)

									Spacer()
								}

								HStack{
									Text("Friends Gathering")
										.foregroundColor(.black)
										.padding(.leading,20)
									Spacer()
								}
							}
						}

					}.frame(width: 165 ,height: 124)
						.background(Color("Background1"))
						.cornerRadius(20)
						.sheet(isPresented: $isPresented8) {
							SheetShare(textSelected: "Friends Gathering" )
								.presentationDetents([ .medium])
								.presentationDragIndicator(.hidden)
								.presentationCornerRadius(25)
						}

				}.padding(.horizontal)
				HStack{
					HStack{
						Button {
							isPresented9 = true
						} label: {
							VStack(spacing: 28){
								HStack{
									Image("Guide")
										.padding(.leading)

									Spacer()
								}

								HStack{
									Text("Reading Book")
										.foregroundColor(.black)
										.padding(.leading,20)
									Spacer()
								}
							}
						}

					}.frame(width: 165 ,height: 124)
						.background(Color("Background1"))
						.cornerRadius(20)
						.sheet(isPresented: $isPresented9) {
							SheetShare(textSelected: "Reading Book" )
								.presentationDetents([ .medium])
								.presentationDragIndicator(.hidden)
								.presentationCornerRadius(25)
						}
					HStack{
						Button {
							isPresented10 = true
						} label: {
							VStack(spacing: 28){
								HStack{
									Image("Music")
										.padding(.leading)

									Spacer()
								}

								HStack{
									Text("Playing Music")
										.foregroundColor(.black)
										.padding(.leading,20)
									Spacer()
								}
							}
						}

					}.frame(width: 165 ,height: 124)
						.background(Color("Background1"))
						.cornerRadius(20)
						.sheet(isPresented: $isPresented10) {
							SheetShare(textSelected: "Playing Music" )
								.presentationDetents([ .medium])
								.presentationDragIndicator(.hidden)
								.presentationCornerRadius(25)
						}

				}.padding(.horizontal)
				HStack{

					HStack{
						Button {
							isPresented11 = true
						} label: {
							VStack(spacing: 28){
								HStack{
									Image("Community")
										.padding(.leading)

									Spacer()
								}

								HStack{
									Text("Painting")
										.foregroundColor(.black)
										.padding(.leading,20)
									Spacer()
								}
							}
						}

					}.frame(width: 165 ,height: 124)
						.background(Color("Background1"))
						.cornerRadius(20)
						.sheet(isPresented: $isPresented11) {
							SheetShare(textSelected: "Painting" )
								.presentationDetents([ .medium])
								.presentationDragIndicator(.hidden)
								.presentationCornerRadius(25)
						}
					HStack{
						Button {
							isPresented12 = true
						} label: {
							VStack(spacing: 28){
								HStack{
									Image("Playing Game")
										.padding(.leading)

									Spacer()
								}

								HStack{
									Text("Playing Games")
										.foregroundColor(.black)
										.padding(.leading,20)
									Spacer()
								}
							}
						}

					}.frame(width: 165 ,height: 124)
						.background(Color("Background1"))
						.cornerRadius(20)
						.sheet(isPresented: $isPresented12) {
							SheetShare(textSelected: "Playing Games" )
								.presentationDetents([ .medium])
								.presentationDragIndicator(.hidden)
								.presentationCornerRadius(25)
						}


				}.padding(.horizontal)



			}
			HStack{

				NavigationLink {
					Onboarding09View()
				} label: {
					Text("Next")
						.font(.custom("MarkPro", size: 17))
						.bold()
						.foregroundColor(.primary)


				}.frame(width: 342,height: 49)
					.cornerRadius(25)
			}.background(Color("Background2").opacity(1))

				.frame(width: .infinity, height: 50)
				.cornerRadius(20)


				.padding([.trailing, .leading], 24)

		}

		

		.background(Color("Background3"))
		.frame(maxWidth: .infinity,maxHeight: .infinity)

	}

			.background(Color("Background3"))
			.edgesIgnoringSafeArea(.all)
			.frame(maxWidth: .infinity,maxHeight: .infinity)
//			.overlay(content: {
//				VStack{
//					TemplateTop()
//						.edgesIgnoringSafeArea(.all)
//					Spacer()
//				}
//			})
//		
			.edgesIgnoringSafeArea(.all)
			.statusBarHidden()
			.navigationBarBackButtonHidden()
	}
}

@available(iOS 16.4, *)
struct Onboarding08View_Previews: PreviewProvider {
	static var previews: some View {
		Onboarding08View()
			.statusBarHidden()
			 
	}
}

struct SheetShare: View {
	@Environment(\.dismiss) private var dismiss
	
	@State var options = ["Daily" , "4 Times in a week", "3 Times in a week" ,"2 Times in a week" ,"Weekly", "3 Times in a mounth" ,"2 Times in a mounth","Monthly"]
	@State var selectedItem = ""
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
					dismiss()
					 
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
				.padding(.bottom,33)
			
		}
	}
}
