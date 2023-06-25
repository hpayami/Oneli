//
//  Oneli01View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/31/23.
//

import SwiftUI

struct Oneli01View: View {
   
	@Environment(\.presentationMode) var presentationMode
	
	@State var isRotating = true
	@State var isPresented = true
	@Environment(\.dismiss) private var dismiss
	var body: some View {
		NavigationView{
			VStack {
				VStack{
					HStack {
						Spacer()
						Button {

							presentationMode.wrappedValue.dismiss()

						} label: {
							Image("Close")
								.padding(.leading, 3)
						}


					}.padding([.trailing, .leading], 24)

						.padding()


				}.padding([.top, .bottom], 20)
						//Button Back


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


							Text("What's your emotion like right now?")

								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 28))
								.fixedSize(horizontal: false, vertical: true)
								.padding([.bottom,.leading], 1)
							Spacer()

						}
					}.frame(width: 342,height: 58)
						.padding(.top,62)

					.padding(.bottom,40)
				VStack(spacing:12)  {
					
					
					
					HStack(spacing:12){
						HStack{
							Button {
								
							} label: {
								VStack(spacing: 28){
									HStack{
										Image("Happy")
											.padding(.leading)
										
										Spacer()
									}
									
									HStack{
										Text("Happy")
											.foregroundColor(.black)
											.padding(.leading,20)
										Spacer()
									}
								}
							}
							
						}.frame(width: 165 ,height: 124)
							.background(Color("Background1"))
							.cornerRadius(20)
						HStack{
							Button {
								
							} label: {
								VStack(spacing: 28){
									HStack{
										Image("Sad")
											.padding(.leading)
										
										Spacer()
									}
									
									HStack{
										Text("Sad")
											.foregroundColor(.black)
											.padding(.leading,20)
										Spacer()
									}
								}
							}
							
						}.frame(width: 165 ,height: 124)
							.background(Color("Background1"))
							.cornerRadius(20)
						
					}
					HStack(spacing:12){
						HStack{
							Button {
								
							} label: {
								VStack(spacing: 28){
									HStack{
										Image("Guilty")
											.padding(.leading)
										
										Spacer()
									}
									
									HStack{
										Text("Stressful")
											.foregroundColor(.black)
											.padding(.leading,20)
										Spacer()
									}
								}
							}
							
						}.frame(width: 165 ,height: 124)
							.background(Color("Background1"))
							.cornerRadius(20)
						HStack{
							Button {
								
							} label: {
								VStack(spacing: 28){
									HStack{
										Image("Anger")
											.padding(.leading)
										
										Spacer()
									}
									
									HStack{
										Text("Depressed")
											.foregroundColor(.black)
											.padding(.leading,20)
										Spacer()
									}
								}
							}
							
						}.frame(width: 165 ,height: 124)
							.background(Color("Background1"))
							.cornerRadius(20)
						
					}
					HStack(spacing:12){
						HStack{
							Button {
								
							} label: {
								VStack(spacing: 28){
									HStack{
										Image("tired")
											.padding(.leading)
										
										Spacer()
									}
									
									HStack{
										Text("Angry")
											.foregroundColor(.black)
											.padding(.leading,20)
										Spacer()
									}
								}
							}
							
						}.frame(width: 165 ,height: 124)
							.background(Color("Background1"))
							.cornerRadius(20)
						HStack{
							Button {
								
							} label: {
								VStack(spacing: 28){
									HStack{
										Image("tired")
											.padding(.leading)
										
										Spacer()
									}
									
									HStack{
										Text("Fear")
											.foregroundColor(.black)
											.padding(.leading,20)
										Spacer()
									}
								}
								
								
								
							}.frame(width: 165 ,height: 124)
								.background(Color("Background1"))
								.cornerRadius(20)
							
						}
					}
					HStack(spacing:12){
						HStack{
							Button {

							} label: {
								VStack(spacing: 28){
									HStack{
										Image("tired")
											.padding(.leading)

										Spacer()
									}

									HStack{
										Text("Disappointed")
											.foregroundColor(.black)
											.padding(.leading,20)
										Spacer()
									}
								}
							}

						}.frame(width: 165 ,height: 124)
							.background(Color("Background1"))
							.cornerRadius(20)
						HStack{
							Button {

							} label: {
								VStack(spacing: 28){
									HStack{
										Image("neutral")
											.padding(.leading)

										Spacer()
									}

									HStack{
										Text("Neutral")
											.foregroundColor(.black)
											.padding(.leading,20)
										Spacer()
									}
								}
							}

						}.frame(width: 165 ,height: 124)
							.background(Color("Background1"))
							.cornerRadius(20)

					}
					
					
					
					
					
					
					 
					
				}
			}.frame(maxWidth: .infinity, maxHeight: .infinity)
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

			//.edgesIgnoringSafeArea(.all)
			.statusBarHidden()
			.navigationBarBackButtonHidden()
			.navigationBarHidden(true)

	}
}
 


struct Oneli01View_Previews: PreviewProvider {
	static var previews: some View {
		Oneli01View()
			.statusBarHidden()
	}
}
