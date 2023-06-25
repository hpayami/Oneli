//
//  Onboarding14View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/30/23.
//

import Marquee
import SwiftUI

struct Onboarding14View: View {
	@State var title1 = "CardioVascular Dis."
	//	- Myocardial Infarction
	//	- Hypertension
	//	- Heart Failure
	//	- Heart Arrhythmia
	//
	@State var title2 = "Cancers"
	//	- Carcinoma
	//	- Sarcoma
	//	- Lukemia
	//	- Lymphoma
	//
	@State var title3 = "Neurological Dis."
	//	- Epilepsy
	//	- Dementia (Alzheimer’s Dis,…)
	//	- Stroke
	//	- Parkinson’s Dis.
	//	- Multiple Sclerosis
	//	- Migraine Headache
	//
	@State var title4 = "Endocrine System Dis."
	//	- Diabetes (DM)
	//	- Hypothyroidism
	//	- Hyperthyroidism
	//	- Polycystic Ovary Syndrome
	//	- Diabetes Insipidus (ADH)
	//	- Adison’s Dis.
	//	- Prolactinoma
	//	- Cushing’s Dis.
	//
	@State var title5 = "Mood Dis."
	//	- Depression
	//	- Bipolar Dis.
	//
	@State var title6 = "Anxiety Dis."
	//	- GAD
	//	- OCD
	//	- PTSD
	//	- Panic Dis.
	//	- Phobia Dis.
	//	- Social Anxiety Dis.
	//
	@State var title7 = "Autoimmune Dis."
	//	- Arthritis (RA)
	//	- Lupus (SLE)
	//	- Crohn’s Dis. (IBD)
	//	- Ulcerative Colitis (IBD)
	//
	@State var title8 = "Other Chronic Dis."
	//	- Osteoporosis
	//	- Chronic Back Pain
	//	- Anemia
	//	- Insomnia
	//	- Chronic Lung Dis.
	//	- Chronic Kidney Dis.
	//	- Hepatitis
	//	- AIDS / HIV+
	//	- Herpes
	//	- HPV (Wenital Warts)
	
	@Environment(\.presentationMode) var presentationMode
	@State private var textoffset = 300.0
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
						.frame(height: 58)

				}.padding([.top, .bottom], 20)

				ScrollView {
					VStack(spacing: 12) {


							//CardioVascular Dis.
						VStack {
							HStack {
								Text("...................")
									.frame(width: 120, height: 2)
									.foregroundColor(.gray)

								Text("\(title1)")
									.font(Font.custom("MarkPro", size: 15))
									.frame(width: .infinity, height: 20)
									.foregroundColor(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.3))

								Text("...................")
									.foregroundColor(.gray)
									.frame(width: 120, height: 2)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {


										Marquee {
											Text("Myocardial Infarction")
												.foregroundColor(.black)
												.font(.custom("MarkPro", size: 17))
										}   .marqueeDuration(12.0)
											.marqueeAutoreverses(true)
											.marqueeDirection(.left2right)
											.marqueeWhenNotFit(true)
											.marqueeIdleAlignment(.leading)


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
							HStack(spacing: 12) {
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



							//Cancers

						VStack {
							HStack {
								Text("...................")
									.frame(width: 120, height: 2)
									.foregroundColor(.gray)

								Text("\(title2)")
									.font(Font.custom("MarkPro", size: 15))
									.frame(width: .infinity, height: 20)
									.foregroundColor(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.3))

								Text("...................")
									.foregroundColor(.gray)
									.frame(width: 120, height: 2)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {


										Marquee {
											Text("Carcinoma")
												.foregroundColor(.black)
												.font(.custom("MarkPro", size: 17))
										}   .marqueeDuration(12.0)
											.marqueeAutoreverses(true)
											.marqueeDirection(.left2right)
											.marqueeWhenNotFit(false)
											.marqueeIdleAlignment(.center)


									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Sarcoma")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("Lukemia")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Lymphoma")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
						}
							//



							//Neurological Dis.
						VStack {
							HStack {
								Text("...................")
									.frame(width: 120, height: 2)
									.foregroundColor(.gray)

								Text("\(title3)")
									.font(Font.custom("MarkPro", size: 15))
									.frame(width: .infinity, height: 20)
									.foregroundColor(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.3))

								Text("...................")
									.foregroundColor(.gray)
									.frame(width: 120, height: 2)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {


										Marquee {
											Text("Epilepsy")
												.foregroundColor(.black)
												.font(.custom("MarkPro", size: 17))
										}   .marqueeDuration(12.0)
											.marqueeAutoreverses(true)
											.marqueeDirection(.left2right)
											.marqueeWhenNotFit(true)
											.marqueeIdleAlignment(.leading)


									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Dementia (Alzheimer’s Dis,…)")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("Stroke")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Parkinson’s Dis")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("Multiple Sclerosis")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Migraine Headache")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
						}




							//Endocrine System Dis.
						VStack {
							HStack {
								Text("...................")
									.frame(width: 120, height: 2)
									.foregroundColor(.gray)

								Text("\(title4)")
									.font(Font.custom("MarkPro", size: 15))
									.frame(width: .infinity, height: 20)
									.foregroundColor(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.3))

								Text("...................")
									.foregroundColor(.gray)
									.frame(width: 120, height: 2)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {


										Marquee {
											Text("Diabetes (DM)")
												.foregroundColor(.black)
												.font(.custom("MarkPro", size: 17))
										}   .marqueeDuration(12.0)
											.marqueeAutoreverses(true)
											.marqueeDirection(.left2right)
											.marqueeWhenNotFit(true)
											.marqueeIdleAlignment(.leading)


									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Hypothyroidism")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("Hyperthyroidism")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Polycystic Ovary Syndrome")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("Diabetes Insipidus (ADH)")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Adison’s Dis")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("Prolactinoma")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Cushing’s Dis")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
						}




						
							//Mood Dis.
						VStack {
							HStack {
								Text("...................")
									.frame(width: 120, height: 2)
									.foregroundColor(.gray)

								Text("\(title5)")
									.font(Font.custom("MarkPro", size: 15))
									.frame(width: .infinity, height: 20)
									.foregroundColor(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.3))

								Text("...................")
									.foregroundColor(.gray)
									.frame(width: 120, height: 2)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("Depression")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Bipolar Dis")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
						}


							//Anxiety Dis.
						VStack {
							HStack {
								Text("...................")
									.frame(width: 120, height: 2)
									.foregroundColor(.gray)

								Text("\(title6)")
									.font(Font.custom("MarkPro", size: 15))
									.frame(width: .infinity, height: 20)
									.foregroundColor(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.3))

								Text("...................")
									.foregroundColor(.gray)
									.frame(width: 120, height: 2)
							}

							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("GAD")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("OCD")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("PTSD")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Panic Dis")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("Phobia Dis")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Social Anxiety Dis")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
						}




							//Autoimmune Dis.
						VStack {
							HStack {
								Text("...................")
									.frame(width: 120, height: 2)
									.foregroundColor(.gray)

								Text("\(title7)")
									.font(Font.custom("MarkPro", size: 15))
									.frame(width: .infinity, height: 20)
									.foregroundColor(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.3))

								Text("...................")
									.foregroundColor(.gray)
									.frame(width: 120, height: 2)
							}

							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("Arthritis (RA)")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Lupus (SLE)")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("Crohn’s Dis. (IBD)")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Ulcerative Colitis (IBD)")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
						}




							//Other Chronic Dis.
						VStack {
							HStack {
								Text("...................")
									.frame(width: 120, height: 2)
									.foregroundColor(.gray)

								Text("\(title8)")
									.font(Font.custom("MarkPro", size: 15))
									.frame(width: 200 , height: 20)
									.foregroundColor(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.3))

								Text("...................")
									.foregroundColor(.gray)
									.frame(width: 120, height: 2)
							}

							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("Osteoporosis")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Chronic Back Pain")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("Anemia")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Insomnia")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("Chronic Lung Dis.")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("Chronic Kidney Dis")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("Hepatitis")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("AIDS / HIV+")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
							HStack(spacing: 12) {
								HStack {
									Button {} label: {
										Text("Herpes")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)

								HStack {
									Button {} label: {
										Text("HPV (Wenital Warts)")
											.foregroundColor(.black)
											.font(.custom("MarkPro", size: 17))
									}

								}.frame(width: 165, height: 70)
									.background(Color("Background1"))
									.cornerRadius(20)
							}
						}
					}


				}

				HStack {
					NavigationLink {
						Onboarding15View()
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
		}.frame(maxWidth: .infinity, maxHeight: .infinity)
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

struct Onboarding14View_Previews: PreviewProvider {
	static var previews: some View {
		Onboarding14View()
			.statusBarHidden()
		 
	}
}
