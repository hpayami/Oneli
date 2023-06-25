//
//  Onboarding09View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/27/23.
//

import Marquee
import SwiftUI
import PermissionsSwiftUI
@available(iOS 16.4, *)
struct Onboarding09View: View {
	@Environment(\.presentationMode) var presentationMode

	@State var isPresented = false
	@Environment(\.dismiss) var dismiss
	@State var showModal = false
	@State var autoCheckAuthorization: Bool = false
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
							Text("Read the text below to figure out your tone of voice.")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 28))
								.multilineTextAlignment(.leading)
							Spacer()

						}
					}.frame(width: 342,height: 58)
				}.padding(.top,2)
					.padding(.bottom,20)
					.padding()

				VStack {
					Text("Please read the text below to figure out your tone of voice.text below to figure out your tone of voice.")

						.foregroundColor(Color("Secondary"))
						.font(.custom("MarkPro", size: 22))
						.bold()
						.multilineTextAlignment(.leading)

				}.frame(width: .infinity)
					.padding()

				ZStack {
					WaveView()
				}

				VStack{

					Button(action: {
						showModal = true
					}, label: {
						Text("Ask user for permissions")
					})
					.JMPermissions(showModal: $showModal, for: [ .microphone])

					.setPermissionComponent(for: .microphone, description: "App needs to record videos")
					.changeHeaderTo("Oneli Permissions")
					HStack {


						NavigationLink {
							Onboarding11View(title: "How tall are you?")
						} label: {
							Text("Start")
								.font(.custom("MarkPro", size: 17))
								.bold()
								.foregroundColor(.primary)

						}.frame(width: 342, height: 50)
							.background(Color(.white))
							.cornerRadius(25)
							.sheet(isPresented: $isPresented) {
								AmandaPermission(isRotating: true)
							}
					}
					.frame(width: 342, height: 50)
					.background(Color(.gray))
					.cornerRadius(32)
					.padding([.top], 20)
					.padding([.bottom], 49)
					.padding([.trailing, .leading], 24)
				}
			}

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
		.navigationBarBackButtonHidden()
	}
}

@available(iOS 16.4, *)
struct Onboarding09View_Previews: PreviewProvider {
	static var previews: some View {
		Onboarding09View( showModal: true, autoCheckAuthorization: true)
			.statusBarHidden()
	}
}

@available(iOS 16.4, *)
struct AmandaPermission : View {
	@State var isPresented = false
	@State var isRotating = true
	var body: some View {
		VStack {
			Spacer()
			VStack {

				Text("Please allow me to hear you, Amanda.")
					.foregroundColor(Color("Primary"))
					.font(.custom("MarkPro", size: 22))
					.bold()
					.multilineTextAlignment(.leading)

			}
			.padding(.horizontal)
			ZStack {
				VStack {
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
					// Image("shape1")
					.rotationEffect(.degrees(isRotating ? 0 : 360))
					// .hueRotation(.degrees(isRotating ? 0 : 230))
					.frame(width: 150, height: 150)
					.padding()
					.onAppear {
						withAnimation(.easeIn(duration: 6)
							.repeatForever(autoreverses: false)) {
								isRotating.toggle()
							}
					}
			}.scaleEffect(0.6)

			HStack {
				Button {
					isPresented = false
				} label: {
					Text("Ok")
						.font(.custom("MarkPro", size: 17))
						.bold()
						.foregroundColor(.primary)

						.presentationDetents([.medium, .large])
				}.frame(width: 342, height: 50)
					.cornerRadius(15)
			}.background(Color("Background3"))
				.frame(width: 342, height: 50)
				.cornerRadius(25)
				.padding()
		}
		.background(Color("Background1"))
		.cornerRadius(32)
		.presentationDetents([.medium])
		.presentationCornerRadius(25)
	}
}
