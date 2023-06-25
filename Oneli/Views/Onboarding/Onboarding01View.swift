	//
	//  Onboarding01View.swift
	//  Oneli
	//
	//  Created by PhD Hossein Payami on 3/23/23.
	//

import SwiftUI
import Foundation

@available(iOS 16.4, *)
struct Onboarding01View: View {
	@Environment(\.presentationMode) var presentationMode
	@State var isRotating = true
	
	var body: some View {
		NavigationView{
		ZStack(alignment: .top, content: {


			VStack{
				VStack{
						//Button Back
					HStack {
						Button {
							presentationMode.wrappedValue.dismiss()
						} label: {
							Image("")
								.padding(.leading,3)
						}

						Spacer()
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
						}
						VStack(alignment: .leading){
							Text("You're set, good job. I'd like to know more about you.")

								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 28))
								.fixedSize(horizontal: false, vertical: true)




						}
					}.frame(width: 342,height: 58)

				}.padding(.top,20)
					.padding(.bottom,52)

				VStack{
					ZStack {

						ZStack {
							Image("shape1")
								.rotationEffect(.degrees(isRotating ? 0 : 360))
							 

							Image("shape4")
								.rotationEffect(.degrees(isRotating ? 0 : 360))

							Image("shape3")
								.rotationEffect(.degrees(isRotating ? 0 : 360))
							  
							Image("shape2")
								.rotationEffect(.degrees(isRotating ? 0 : 360))

						}

						Circle()
							.fill(.white)
							.frame(width: 150,height: 150)

							.rotationEffect(.degrees(isRotating ? 0 : 360))


							.padding()
							.onAppear {
								withAnimation(.easeInOut(duration: 6).repeatForever(autoreverses: false)) {
									isRotating.toggle()
								}
							}
					}.frame(width: 342, height: 342)
						.scaleEffect(0.8)
				}.padding(.bottom, 109)
				Spacer()
				VStack{

					Button {

					} label: {
						Text("Let's Go")
							.font(.custom("MarkPro", size: 17))
							.bold()
							.foregroundColor(.primary)


					}.frame(width: 342,height: 50)
						.background(Color(.white))
						.cornerRadius(25)
				} .frame(width: 342 ,height: 50 )
					.background(Color(.gray))
					.cornerRadius(25)
					.padding([.top], 20)
					.padding([.bottom], 29)
					.padding([.trailing, .leading], 24)


			}.padding()


		})
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(Color("Background3"))
		.edgesIgnoringSafeArea(.all)
	}

//			.overlay(content: {
//				VStack{
//					TemplateTop()
//						.edgesIgnoringSafeArea(.all)
//					Spacer()
//				}
//			})
		

			.statusBarHidden()
			.navigationBarBackButtonHidden()
			.navigationBarHidden(true)
	}
}
@available(iOS 16.4, *)
struct Onboarding01View_Previews: PreviewProvider {
	static var previews: some View {
		Onboarding01View()
			.statusBarHidden()
	}
}
