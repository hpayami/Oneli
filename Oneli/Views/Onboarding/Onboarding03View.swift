//
//  Onboarding03View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/23/23.
//

import SwiftUI
import Foundation

@available(iOS 16.4, *)
struct Onboarding03View: View {
	@Environment(\.presentationMode) var presentationMode
	@State var name: String
	@State var family: String
	@State private var showError = false
	 
	@FocusState private var isTextFieldFocused: Bool
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
							Text("What’s your name?")

								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 28))
								.fixedSize(horizontal: false, vertical: true)
								.padding([.bottom,.leading], 1)
							Spacer()

						}
					}.frame(width: 342,height: 58)
				}.padding(.top,20)
					.padding(.bottom,80)





					//Name and Family
				VStack(spacing: 25){
					HStack {


						TextField("First name", text: $name)
							.font(.custom("MarkPro", size: 17))
							.padding()
							.background(Color.init(hex: "background: #2B313D0D")).opacity(1)

							.cornerRadius(25)
							.overlay(
								RoundedRectangle(cornerRadius: 25)
									.stroke(isTextFieldFocused ? Color("Secondary").opacity(1) : Color("Teriary").opacity(1), lineWidth: 1)


							)
							.onSubmit {
								isTextFieldFocused = false
							}
							.onAppear {
								UITextField.appearance().clearButtonMode = .whileEditing
							}
							.focused($isTextFieldFocused)
							.padding(.horizontal)
							.keyboardType(.alphabet)
							.imageScale(.medium)
					}

					HStack {

						TextField("Last name", text: $family)

							.font(.custom("MarkPro-Medium", size: 17))
							.padding()
							.background(Color.init(hex: "background: #2B313D0D")).opacity(1)
							.cornerRadius(25)
							.overlay(
								RoundedRectangle(cornerRadius: 25)
									.stroke(isTextFieldFocused ? Color("Secondary").opacity(1) : Color("Teriary").opacity(1), lineWidth: 1)


							)
							.onSubmit {
								isTextFieldFocused = false
							}
							.onAppear {
								UITextField.appearance().clearButtonMode = .whileEditing
							}
							.focused($isTextFieldFocused)
							.padding(.horizontal)
							.keyboardType(.alphabet)
							.imageScale(.medium)

					}


				}
				Spacer()




				HStack{
					NavigationLink {
						Onboarding04View()
					} label: {
						Text("Next")
							.font(.custom("MarkPro", size: 17))
							.bold()
							.foregroundColor(.primary)
						 

					}.frame(width: 342,height: 50)
						.background(Color(.white))
						.cornerRadius(25)
				}
				.frame(maxWidth: .infinity,alignment:.bottom)
				.frame(width: 342 ,height: 50 )
				.background(Color("Background3"))
				.cornerRadius(25)
				.padding([.top], 20)
				.padding([.bottom], 49)
				.padding([.trailing, .leading], 24)




			}




			.frame(maxWidth: .infinity, maxHeight: .infinity)
			.background(Color.init(hex: "#EEF2F5"))
			.edgesIgnoringSafeArea(.all)
		}
//			.overlay(content: {
//				VStack{
//					TemplateTop()
//						.edgesIgnoringSafeArea(.all)
//					Spacer()
//				}
//			})
			.navigationBarBackButtonHidden()
			.navigationBarHidden(true)
			.statusBarHidden()
	}
}

@available(iOS 16.4, *)
struct OnboardingView3_Previews: PreviewProvider {
	static var previews: some View {
		Onboarding03View(name: "" , family: "")
			.statusBarHidden()
		  
	}
}
