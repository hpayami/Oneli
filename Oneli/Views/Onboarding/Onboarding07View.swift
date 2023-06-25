//
//  Onboarding07View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/27/23.
//

import SwiftUI
@available(iOS 16.4, *)
struct Onboarding07View: View {
		@Environment(\.presentationMode) var presentationMode
		@State var isRotating = true
		
	
	var body: some View {

		NavigationView{
		VStack{


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
							Text("Wow, you're so amazing. Let’s talk ...")

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
								//.hueRotation(.degrees(isRotating ? -220 : 300))
								//.rotation3DEffect(.degrees(75), axis: (x: isRotating ? 1 : 5, y: 0, z: 0))
							Image("shape4")
								.rotationEffect(.degrees(isRotating ? 0 : 360))
								//.hueRotation(.degrees(isRotating ? -150 : 0))
								//.rotation3DEffect(.degrees(75), axis: (x: isRotating ? 1 : 5, y: 0, z: 0))
							Image("shape3")
								.rotationEffect(.degrees(isRotating ? 0 : 360))
								//.hueRotation(.degrees(isRotating ? 720 : -50))
							Image("shape2")
								.rotationEffect(.degrees(isRotating ? 0 : 360))
								//.blur(radius: 18)

								//.hueRotation(.degrees(isRotating ? 0 : 360))
								//.rotation3DEffect(.degrees(15), axis: (x: 1, y: 1, z: 1), perspective: isRotating ? 5 : 0)
						}
							//.blendMode(isRotating ? .lighten : .difference)
						Circle()
							.fill(.white)
							//Image("shape1")
							.rotationEffect(.degrees(isRotating ? 0 : 360))
							//.hueRotation(.degrees(isRotating ? 0 : 230))
							.frame(width: 150, height: 150)
							.padding()
							.onAppear {
								withAnimation(.easeIn(duration: 6)
									.repeatForever(autoreverses: false)) {
										isRotating.toggle()
									}
							}
					}.scaleEffect(0.9)
				}.padding(.bottom, 109)



			}.padding(.top,20)

			Spacer()

			HStack {
				NavigationLink {
					Onboarding08View()
				} label: {
					Text("Let's Go")
						.font(.custom("MarkPro", size: 17))
						.bold()
						.foregroundColor(.primary)

						.frame(width: 342, height: 50)
						.padding(.horizontal)
				}
			}
				.background(Color("Background1")).opacity(1)
				.edgesIgnoringSafeArea(.all)
				.frame(width: 342, height: 50)
				.cornerRadius(25)
			.padding([.top], 20)
			.padding([.bottom], 49)
			.padding([.trailing, .leading], 24)
		}.frame(maxWidth: .infinity, maxHeight: .infinity)
	}

				.background(Color("Background3"))
				.edgesIgnoringSafeArea(.all)
				.frame(width:.infinity , height: .infinity)
//				.overlay(content: {
//					VStack{
//						TemplateTop()
//							.edgesIgnoringSafeArea(.all)
//						Spacer()
//					}
//				})
			
				.edgesIgnoringSafeArea(.all)
				.statusBarHidden()
				.navigationBarBackButtonHidden()
		}
}
 

@available(iOS 16.4, *)
struct Onboarding07View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding07View()
			.statusBarHidden()
    }
}
