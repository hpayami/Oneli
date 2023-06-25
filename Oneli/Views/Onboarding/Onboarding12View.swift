//
//  Onboarding12View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/29/23.
//

import SwiftUI
import Marquee
struct Onboarding12View: View {
 
	
	@Environment(\.presentationMode) var presentationMode
	
	@State var isRotating = true
	@State var isPresented = true
	@Environment(\.dismiss) private var dismiss
	var body: some View {
		NavigationView{
		VStack {
			VStack {
					// Button Back
				HStack {
					Button {
						presentationMode.wrappedValue.dismiss()
					} label: {
						Image("Back")
							.padding(.leading, 3)
					}
					
					Spacer()
				}.padding([.trailing, .leading], 24)
					.padding(.top, 7)
					.padding(.bottom, 48)
				
				VStack {
					HStack {
						Image("Oneli")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(width: 38, height: 16)
							.foregroundColor(Color("Secondary"))
							.padding([.top, .leading], 1)
						Spacer()
					}
					.padding(.horizontal)
					HStack {

						Text("Which of these are present in your past medical history?")
							.foregroundColor(.black)
							.font(.custom("MarkPro", size: 28))
							.fixedSize(horizontal: false, vertical: true)

					}
					.padding(.horizontal)
				}.padding(.horizontal)
					.frame(width: 430, height: 58)
				
			}.padding([.top, .bottom], 40)





			Spacer()
			VStack(spacing:12)  {

				HStack(spacing:12)  {
					HStack {
						Button {} label: {
							Text("Myocardial Infarction")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 17))

						}

					}.frame(width: 165, height: 70)
						.background(Color("Background1"))
						.cornerRadius(20)

					HStack {
						Button {} label: {
							Text("Hypertension")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 17))

						}

					}.frame(width: 165, height: 70)
						.background(Color("Background1"))
						.cornerRadius(20)
				}
				HStack(spacing:12)  {
					HStack {
						Button {} label: {
							Text("Heart Failure")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 17))

						}

					}.frame(width: 165, height: 70)
						.background(Color("Background1"))
						.cornerRadius(20)

					HStack {
						Button {} label: {
							Text("Heart Arrhythmia")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 17))

						}

					}.frame(width: 165, height: 70)
						.background(Color("Background1"))
						.cornerRadius(20)
				}
			}

			Spacer()

				// footer







			HStack {

				NavigationLink {
					Onboarding13View()
				} label: {
					Text("Next")
						.font(.custom("MarkPro", size: 17))
						.bold()
						.foregroundColor(.primary)

						.frame(width: 342, height: 50)
						.padding(.horizontal)

				}
			}

			.background(Color("Background1"))
			.cornerRadius(25)
			.padding([.top], 20)
			.padding([.bottom], 49)
			.padding([.trailing, .leading], 24)

		}.frame(maxWidth: .infinity, maxHeight: .infinity)

			.background(Color("Background3"))
			.edgesIgnoringSafeArea(.all)
	}
			.frame(maxWidth: .infinity, maxHeight: .infinity)
//			.overlay(content: {
//				VStack{
//					TemplateTop()
//						.edgesIgnoringSafeArea(.all)
//					Spacer()
//				}
//			})
		
			.edgesIgnoringSafeArea(.all)
			.statusBarHidden()
			.navigationBarBackButtonHidden()
	}
}

struct Onboarding12View_Previews: PreviewProvider {
	static var previews: some View {
		Onboarding12View()
			.statusBarHidden()
	}
}
 
