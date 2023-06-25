//
//  ForYouView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 5/3/23.
//

import SwiftUI

struct ForYouView: View {

	var MarkProTitle2Font: Font = .custom("MarkPro", size: 34)
	var MarkProRegularFont: Font = .custom("MarkPro-Regular", size: 17)
	var MarkProCaption2Font: Font = .custom("MarkPro-Regular", size: 11)
	var MarkProfootNoteFont: Font = .custom("MarkPro-Regular", size: 13)
	@State private var isShowingSheet = false
	@State private var isPresentedProfile = false
	@State private var isPresented1 = false
	@State private var isPresented2 = false
	@State private var isPresented3 = false
	@State private var isPresented4 = false
	@State private var isPresented5 = false
	@State private var isPresented6 = false
	@State private var isPresented7 = false
	@State private var isPresented8 = false
	@State private var chatPresenter = false

	@Environment(\.presentationMode) var presentationMode


		//HeadlineEmotion
	@State var imageTitleEmotion : String = "Happy"
	@State var titleEmotion: String = "EMOTION"
	@State var unitEmotion: String = "Happy"
	@State var unitTitleEmotion: String = "Tell me More"
	@State var pickerSelectedItemEmotion = 0
	@State var dataPointsEmotion: [[CGFloat]] = [
		[50,100,150,180,130,80,25],
		[150,120,150,200,120,10,25],
		[30,100,15,20,130,15,25]
	]

		//HeadlineMentalAge
	@State var imageTitleMentalAge : String = "MentalAge"
	@State var titleMentalAge: String = "MENTAL AGE"
	@State var unitMentalAge: String = "29 y.o"
	@State var unitTitleMentalAge: String = "Tell me More"
	@State var pickerSelectedItemMentalAge = 0
	@State var dataPointsMentalAge: [[CGFloat]] = [
		[50,100,150,180,130,80,25],
		[150,120,150,200,120,10,25],
		[30,100,15,20,130,15,25]
	]


	var body: some View {

		
			VStack{
					// Header


				VStack{
					HStack {
						HStack {
							Button{
								isPresentedProfile = true
							} label: {
								Image("Profile")
									.resizable()
									.aspectRatio(contentMode: .fit)
									.frame(width: 40, height: 40)
									.background(Color(.white))
									.cornerRadius(10)
							}.fullScreenCover(isPresented: $isPresentedProfile) {
								ProfileView()
							}



						}.padding(20.0)

						Spacer()
					}.padding([.top], 24)
						.padding(.leading,20)
				}.padding([.top], 24)
				VStack(alignment: .leading) {
					HStack {
						Text("Hi, Amanda")
							.font(MarkProTitle2Font)
							.bold()
						Spacer()
					}.padding(.leading, 24)
						.padding(.bottom, 2)
					HStack {
						Text("Welcome back to your space")
							.font(.subheadline)
							.bold()
							.foregroundColor(Color("Secondary"))
						Spacer()
					}.padding(.leading, 24)

				}.padding()

				ScrollView (.vertical,showsIndicators: false){


						// Main Container
					VStack(alignment: .center ,spacing: 12, content: {

							//EMOTION View
						Button(action: {
							isPresented1 = true
						}) {
							HStack {
								VStack {
									HStack {
										Image("\(imageTitleEmotion)")
											.padding()
										Spacer()
									}
									HStack {
										Text("\(titleEmotion)")
											.font(.custom("MarkPro",size: 12))
											.bold()
											.foregroundColor(.gray)

										Spacer()
									}
									HStack {
										Text("\(unitEmotion)")
											.font(.custom("MarkPro", size: 22))
											.foregroundColor(.black)
										Spacer()
									}
									HStack {
										Text("\(unitTitleEmotion)")
											.font(.custom("MarkPro", size: 12))
											.foregroundColor(.black)
											.multilineTextAlignment(.leading)
											.lineLimit(nil)
										Spacer()
									}
								}

								VStack { // Rings start
									Spacer()
									HStack{
										Image("ChartEmotion")
											.resizable()
											.scaledToFit()
											.frame(width:148,height:125)
									}.padding(.all)
									Spacer()

								}

							}.padding()

								.background(Color("VioletPastel")).opacity(1)

								// .edgesIgnoringSafeArea(.all)
								.frame(width: .infinity, height: 165)
								.cornerRadius(32)


						}.fullScreenCover(isPresented: $isPresented1, content: {
							EmotionView()
						})
						.padding([.trailing,.leading],34)


							// First Container
						HStack(spacing: 12) {
								// Walked View
							Button {
								isPresented2 = true
							} label: {
								VStack {
									VStack {
										Spacer()
										HStack {
											Image("Steps").padding()
											Spacer()
										}

										VStack(alignment: .leading) {
											HStack {
												Text("STEPS")
													.foregroundColor(Color("Secondary"))
													.font(.custom("MarkPro",size: 12))
													.bold()

												Spacer()
											}
											HStack {
												Text("10,234")
													.foregroundColor(Color("Primary"))
													.bold()
													.font(.title2)
												Spacer()
											}

											HStack {
												Text("Tell me more")
													.foregroundColor(Color("Secondary"))
													.font(.subheadline)
												Spacer()
											}
										}
										.padding([.leading, .trailing, .bottom], 20)
									}
								}
								.frame(width: .infinity, height: 164)
								.background(Color("OrangePastel"))
								.cornerRadius(32)

							}.fullScreenCover(isPresented: $isPresented2, content: {
								StepsView()
							})

								// HealtyFood View
							Button{
								isPresented3 = true
							} label: {
								VStack {
									VStack {
										Spacer()
										HStack {
											Image("HealtyFood").padding()
											Spacer()
										}

										VStack(alignment: .leading) {
											HStack {
												Text("DIET")
													.foregroundColor(Color("Secondary"))
													.font(.custom("MarkPro",size: 12))
													.bold()
												Spacer()
											}
											HStack {
												Text("789")
													.foregroundColor(Color("Primary"))
													.bold()
													.font(.title2)
												Spacer()
											}

											HStack {
												Text("Tell me more")
													.foregroundColor(Color("Secondary"))
													.font(.subheadline)
												Spacer()
											}
										}
										.padding([.leading, .trailing, .bottom], 20)
									}
								}
								.frame(width: .infinity, height: 164)
								.background(Color("GreenPastel"))
								.cornerRadius(32)
							}.fullScreenCover(isPresented: $isPresented3, content: {
								HealthyFood()
							})
						}
						.padding([.trailing,.leading],34)

							// Second Container

							//MentalAge


						Button(action: {
							isPresented4 = true
						}) {
							HStack {
								VStack {
									HStack {
										Image("\(imageTitleMentalAge)")
											.padding()
										Spacer()
									}
									HStack {
										Text("\(titleMentalAge)")
											.font(.custom("MarkPro",size: 12))
											.bold()
											.foregroundColor(.gray)

										Spacer()
									}
									HStack {
										Text("\(unitMentalAge)")
											.font(.custom("MarkPro", size: 22))
											.foregroundColor(.black)
										Spacer()
									}
									HStack {
										Text("\(unitTitleMentalAge)")
											.font(.custom("MarkPro", size: 12))
											.foregroundColor(.black)
											.multilineTextAlignment(.leading)
											.lineLimit(nil)
										Spacer()
									}
								}

								VStack { // Rings start
									Spacer()
									HStack{
										Image("ChartEmotion")
											.resizable()
											.scaledToFit()
											.frame(width:148,height:125)
									}.padding(.all)
									Spacer()

								}

							}.padding()

								.background(Color("GrayPastel")).opacity(1)

								// .edgesIgnoringSafeArea(.all)
								.frame(width: .infinity, height: 165)
								.cornerRadius(32)


						}.fullScreenCover(isPresented: $isPresented4, content: {
							MentalAgeView()
						})
						.padding([.trailing,.leading],34)
							// Third Container



							//Fourth Container
							//Environment and Fertility

						HStack(spacing: 12, content: {

								// Environment View
							Button {
								isPresented5 = true
							} label: {
								VStack {
									VStack {
										Spacer()
										HStack {
											Image("Water").padding()
											Spacer()
										}

										VStack(alignment: .leading) {
											HStack {

												Text("DRINKED")
													.foregroundColor(Color("Secondary"))
													.font(.custom("MarkPro",size: 12))
													.bold()

												Spacer()
											}
											HStack {
												Text("2.8")
													.foregroundColor(Color("Primary"))
													.bold()
													.font(.custom("MarkPro", size:22))
												Text("litre")
													.foregroundColor(Color("Primary"))
													.bold()
													.font(.custom("MarkPro", size:17))
												Spacer()
											}

											HStack {
												Text("Tell me more")
													.foregroundColor(Color("Secondary"))
													.font(.subheadline)
													.font(.subheadline)
												Spacer()
											}
										}.padding([.leading, .trailing, .bottom], 20)
									}

								}.frame(width: .infinity, height: 164)

									.background(Color("BluePastel"))
									.cornerRadius(32)
							}.fullScreenCover(isPresented: $isPresented7) {
								DrinkedView()
							}



								// Slept View
							Button{
								isPresented8 = true
							} label:{
								VStack {
									VStack {
										Spacer()
										HStack {
											Image("Sleep").padding()
											Spacer()
										}

										VStack(alignment: .leading) {
											HStack {

												Text("SLEEP AGE")
													.foregroundColor(Color("Secondary"))
													.font(.custom("MarkPro",size: 12))
													.bold()

												Spacer()
											}
											HStack {
												Text("35")
													.foregroundColor(Color("Primary"))
													.bold()
													.font(.custom("MarkPro", size:22))
												Text("y.o")
													.foregroundColor(Color("Primary"))
													.bold()
													.font(.custom("MarkPro", size:17))
												Spacer()
											}

											HStack {
												Text("Tell me more")
													.foregroundColor(Color("Secondary"))
													.font(.subheadline)
												Spacer()
											}
										}.padding([.leading, .trailing, .bottom], 20)
									}

								}.frame(width: .infinity, height: 164)
									.background(Color("GrayPastel"))
									.cornerRadius(32)
							}.fullScreenCover(isPresented: $isPresented8) {
								YouSleptView()
							}



						})
						.padding([.trailing,.leading],34)
						HStack(spacing: 12, content: {

								// Environment View
							Button {
								isPresented7 = true
							} label: {
								VStack {
									VStack {
										Spacer()
										HStack {
											Image("Noise").padding()
											Spacer()
										}

										VStack(alignment: .leading) {
											HStack {

												Text("ENVIRONMENT")
													.foregroundColor(Color("Secondary"))
													.font(.custom("MarkPro",size: 12))
													.bold()

												Spacer()
											}
											HStack {
												Text("Unhealthy")
													.foregroundColor(Color("Primary"))
													.bold()
													.font(.title2)
												Spacer()
											}

											HStack {
												Text("Tell me more")
													.foregroundColor(Color("Secondary"))
													.font(.subheadline)
													.font(.subheadline)
												Spacer()
											}
										}.padding([.leading, .trailing, .bottom], 20)
									}

								}.frame(width: .infinity, height: 164)

									.background(Color("YellowPastel"))
									.cornerRadius(32)
							}.fullScreenCover(isPresented: $isPresented7) {
								EnvironmentView()
							}



								// Slept View
							Button{
								isPresented8 = true
							} label:{
								VStack {
									VStack {
										Spacer()
										HStack {
											Image("Drop").padding()
											Spacer()
										}

										VStack(alignment: .leading) {
											HStack {

												Text("FERTILITY")
													.foregroundColor(Color("Secondary"))
													.font(.custom("MarkPro",size: 12))
													.bold()

												Spacer()
											}
											HStack {
												Text("7h,23m")
													.foregroundColor(Color("Primary"))
													.bold()
													.font(.title2)
												Spacer()
											}

											HStack {
												Text("+2h,34m")
													.foregroundColor(Color("Secondary"))
													.font(.subheadline)
												Spacer()
											}
										}.padding([.leading, .trailing, .bottom], 20)
									}

								}.frame(width: .infinity, height: 164)
									.background(Color("PinkPastel"))
									.cornerRadius(32)
							}.fullScreenCover(isPresented: $isPresented8) {
								FertilityView()
							}



						})
						.padding([.trailing,.leading],34)

					})

				}






			}.frame(maxWidth:.infinity, maxHeight: .infinity)
				.background(Color("Background2"))
				.edgesIgnoringSafeArea(.all)



		.navigationBarHidden(true)
		.navigationBarBackButtonHidden()
	}
}

struct ForYouView_Previews: PreviewProvider {
	static var previews: some View {
		ForYouView()
			.frame(maxWidth:.infinity, maxHeight: .infinity)
			.background(Color("Background2"))
			.edgesIgnoringSafeArea(.all)



			.navigationBarHidden(true)
			.navigationBarBackButtonHidden()
	}
}




