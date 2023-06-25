//
//  Onboarding13View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/29/23.
//

import SwiftUI
import Marquee

struct Onboarding13View: View {
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
							Marquee {
								Text("Which of these are present in your past medical history?")
									.foregroundColor(.black)
									.font(.custom("MarkPro", size: 28))
									.multilineTextAlignment(.trailing)
									.lineLimit(1)
							}   .marqueeDuration(12.0)
								.marqueeAutoreverses(true)
								.marqueeDirection(.left2right)
								.marqueeWhenNotFit(false)
								.marqueeIdleAlignment(.leading)
						}
						.padding(.horizontal)
					}.padding(.horizontal)
						.frame( height: 58)
					
				}.padding([.top, .bottom], 20)
				ScrollView {
					
					
					
					VStack(spacing:12)  {
						
						HStack(spacing:12)  {
							HStack {
								Button {} label: {
									Text("Medical")
										.foregroundColor(.black)
										.font(.custom("MarkPro", size: 17))
									
								}
								
							}.frame(width: 165, height: 70)
								.background(Color("Background1"))
								.cornerRadius(20)
							
							HStack {
								Button {} label: {
									Text("Medical")
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
									Text("Medical")
										.foregroundColor(.black)
										.font(.custom("MarkPro", size: 17))
									
								}
								
							}.frame(width: 165, height: 70)
								.background(Color("Background1"))
								.cornerRadius(20)
							
							HStack {
								Button {} label: {
									Text("Medical")
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
									Text("Medical")
										.foregroundColor(.black)
										.font(.custom("MarkPro", size: 17))
									
								}
								
							}.frame(width: 165, height: 70)
								.background(Color("Background1"))
								.cornerRadius(20)
							
							HStack {
								Button {} label: {
									Text("Medical")
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
									Text("Medical")
										.foregroundColor(.black)
										.font(.custom("MarkPro", size: 17))
									
								}
								
							}.frame(width: 165, height: 70)
								.background(Color("Background1"))
								.cornerRadius(20)
							
							HStack {
								Button {} label: {
									Text("Medical")
										.foregroundColor(.black)
										.font(.custom("MarkPro", size: 17))
									
								}
								
							}.frame(width: 165, height: 70)
								.background(Color("Background1"))
								.cornerRadius(20)
						}
					}
					
					
				}
				
				HStack {
					
					NavigationLink {
						Onboarding14View()
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
			} .frame(maxWidth: .infinity, maxHeight: .infinity)
			
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
			.statusBarHidden().navigationBarBackButtonHidden()
	}
}

struct Onboarding13View_Previews: PreviewProvider {
	static var previews: some View {
		Onboarding13View()
			.statusBarHidden()
	}
}

 
