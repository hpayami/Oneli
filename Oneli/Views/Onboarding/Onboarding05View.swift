//
//  Onboarding05View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/23/23.
//

import SwiftUI
import Foundation

@available(iOS 16.4, *)
struct Onboarding05View: View {
	@Environment(\.presentationMode) var presentationMode
	@State var isRotating = true
	
	var body: some View {
		NavigationView {
		VStack{
			
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
						Text("Do you have a gender?")

							.foregroundColor(.black)
							.font(.custom("MarkPro", size: 28))
							.fixedSize(horizontal: false, vertical: true)
							.padding([.bottom,.leading], 1)
						Spacer()

					}
				}.frame(width: 342,height: 58)
			}.padding(.top,20)
				.padding(.bottom,80)


			
			


			VStack(spacing: 12){
					//Row 0th
				HStack(spacing: 12){
					HStack{
						Button {

						} label: {
							Text("Female")
								.font(.custom("MarkPro", size: 17))
								.foregroundColor(.black)
								.bold()
						}

					}.frame(width: 165 ,height: 70)
						.background(Color("Background1"))
						.cornerRadius(20)
						.padding(.leading,24)

					HStack{
						Button {

						} label: {
							Text("Male")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 17))
								.bold()
						}

					}.frame(width: 165 ,height: 70)
						.background(Color("Background1"))
						.cornerRadius(20)
						.padding(.trailing,24)

				}
					//Seperator

				VStack{
					HStack{
						Text(".....................................")
							.font(Font.custom("MarkPro-Medium", size: 15))
							.frame(width:120, height: 2)
							.foregroundColor(Color("Teriary"))
						Text("OR")
							.font(Font.custom("MarkPro-Medium", size: 15))
							.frame(width: 23, height: 20)
							.foregroundColor(Color("Teriary"))


						Text("....................................")
							.font(Font.custom("MarkPro-Medium", size: 15))
							.foregroundColor(Color("Teriary"))
							.frame(width:120, height: 2)

					}
				}.padding(.top, 10)


					//Row 1th
				HStack(spacing: 12){
					HStack{
						Button {
						} label: {
							Text("Non-bionary")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 17))
								.bold()
						}
					}.frame(width: 165 ,height: 70)
						.background(Color("Background1"))
						.cornerRadius(20)

					HStack{
						Button {

						} label: {
							Text("Genderqueer")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 17))
								.bold()
						}

					}.frame(width: 165 ,height: 70)
						.background(Color("Background1"))
						.cornerRadius(20)

				}.padding(.top, 20)

					//Row 2nd
				HStack(spacing: 12){
					HStack{
						Button {

						} label: {
							Text("Genderfluid")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 17))
								.bold()
						}

					}.frame(width: 165 ,height: 70)
						.background(Color("Background1"))
						.cornerRadius(20)
					HStack{
						Button {

						} label: {
							Text("Bigender")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 17))
								.bold()
						}

					}.frame(width: 165 ,height: 70)
						.background(Color("Background1"))
						.cornerRadius(20)

				}
					//Row 3th
				HStack(spacing: 12){
					HStack{
						Button {

						} label: {
							Text("Agender")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 17))
								.bold()
						}

					}.frame(width: 165 ,height: 70)
						.background(Color("Background1"))
						.cornerRadius(20)
					HStack{
						Button {

						} label: {
							Text("Two-spirit")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 17))
								.bold()
						}

					}.frame(width: 165 ,height: 70)
						.background(Color("Background1"))
						.cornerRadius(20)

				}
					//Row 4th
				HStack(spacing: 12){
					HStack{
						Button {

						} label: {
							Text("Androgynous")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 17))
								.bold()
						}

					}.frame(width: 165 ,height: 70)
						.background(Color("Background1"))
						.cornerRadius(20)
					HStack{
						Button {

						} label: {
							Text("Transgender")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 17))
								.bold()
						}

					}.frame(width: 165 ,height: 70)
						.background(Color("Background1"))
						.cornerRadius(20)

				}

			}.padding([.trailing, .leading],24)
				.frame(width: 390, height: 470)
				.padding(.top,2)



			
			HStack{
				
				NavigationLink{
					Onboarding11View(title: "How tall are you?")
				} label: {
					Text("No need to say")
						.font(.custom("MarkPro", size: 17))
						.bold()
						.foregroundColor(.primary)
					
					
				}.foregroundColor(Color(.black))
					.frame(width: 342,height: 50)
				
					.cornerRadius(25)
			} .frame(width: 342 ,height: 50 )
				.background(Color("Background3"))
				.background(Color(red: 43, green: 49, blue: 61).opacity(0.12))
				.cornerRadius(25)
				.padding([.top], 20)
				.padding([.bottom], 49)
				.padding([.trailing, .leading], 24)

		} 
		


			.background(Color("Background2"))
			.edgesIgnoringSafeArea(.all)
	}.frame(maxWidth: .infinity, maxHeight: .infinity)
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
struct Onboarding05View_Previews: PreviewProvider {
	static var previews: some View {
		Onboarding05View()
			.statusBarHidden()
	}
}
