//
//  Onboarding15View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/11/23.
//

import SwiftUI
import Marquee
struct Onboarding15View: View {
 
	 
	@State var secondaryDirectionValue: CGFloat = 0.0
	@Environment(\.presentationMode) var presentationMode
		
		@State var isRotating = true
		@State var isPresented = true
		@Environment(\.dismiss) private var dismiss
	var body: some View {
		NavigationView {


		VStack{

			Spacer()
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
						Text("How much do you weight?")

							.foregroundColor(.black)
							.font(.custom("MarkPro", size: 28))
							.fixedSize(horizontal: true, vertical: false)
							.padding([.bottom,.leading], 1)
						Spacer()

					}
				}.frame(width: 342,height: 58)
			}.padding(.top,20)
				.padding(.bottom,40)





			CircularSliderView(secondaryDirectionValue: secondaryDirectionValue)




				//footer
			Spacer()

			HStack {

				NavigationLink {
					ForYouHomeView()
				} label: {
					Text("Next")
						.font(.custom("MarkPro", size: 17))
						.bold()
						.foregroundColor(.primary)
						.fixedSize(horizontal: true, vertical: false)
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
	}.frame(maxWidth: .infinity, maxHeight: .infinity)
//				.overlay(content: {
//					VStack{
//						TemplateTop()
//							.edgesIgnoringSafeArea(.all)
//						Spacer()
//					}
//				})
			
				.statusBarHidden()
				.navigationBarBackButtonHidden()
			
			
			
			
    }
}

struct Onboarding15View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding15View()
			.statusBarHidden()
    }
}

