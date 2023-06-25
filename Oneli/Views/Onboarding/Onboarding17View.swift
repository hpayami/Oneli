////
////  Onboarding17View.swift
////  Oneli
////
////  Created by PhD Hossein Payami on 4/18/23.
////
//
//import CompactSlider
//import SwiftUI
//
//struct Onboarding17View: View {
//	@State var defaultValue: Double = 0.5
//	@State var lowerValue: Double = 0.4
//	@State var upperValue: Double = 0.6
//	 
//	@Environment(\.presentationMode) var presentationMode
// 
//	var body: some View {
//		VStack {
//			VStack {
//					// Button Back
//				HStack {
//					Button {
//						presentationMode.wrappedValue.dismiss()
//					} label: {
//						Image("")
//							.padding(.leading, 3)
//					}
//					
//					Spacer()
//				}.padding([.trailing, .leading], 24)
//					.padding(.top, 7)
//					.padding(.bottom, 48)
//				
//				VStack {
//					HStack {
//						Image("Oneli")
//							.resizable()
//							.aspectRatio(contentMode: .fit)
//							.frame(width: 38, height: 16)
//							.foregroundColor(Color("Secondary"))
//							.padding([.top, .leading], 1)
//						Spacer()
//					}
//					VStack(alignment: .leading) {
//						Text("When does your last period begin and end?")
//						
//							.foregroundColor(.black)
//							.font(.custom("MarkPro", size: 28))
//							.fixedSize(horizontal: false, vertical: true)
//					}
//				}.frame(width: 342, height: 58)
//				
//			}.padding(.top, 20)
//				.padding(.bottom, 52)
//			VStack {
//					// Get the range of values.
//				CompactSlider(from: $lowerValue, to: $upperValue, step: 0.1) {
//					Text("Range")
//					Spacer()
//					Text(String(format: "%.2f - %.2f", lowerValue, upperValue))
//						.monospacedDigitIfPossible()
//				}
//				
//				Text("\(lowerValue)")
//				Text("\(upperValue)")
//				
//			}.padding()
//			
//			Spacer()
//			VStack {
//				Button {} label: {
//					Text("Let's Go")
//						.font(.custom("MarkPro", size: 17))
//						.bold()
//						.foregroundColor(.primary)
//					
//				}.frame(width: 342, height: 50)
//					.background(Color(.white))
//					.cornerRadius(25)
//			}.frame(width: 342, height: 50)
//				.background(Color(.gray))
//				.cornerRadius(25)
//				.padding([.top], 20)
//				.padding([.bottom], 49)
//				.padding([.trailing, .leading], 24)
//		
//		}
//		.frame(maxWidth: .infinity, maxHeight: .infinity)
//		.background(Color("Background3"))
//		.edgesIgnoringSafeArea(.all)
//		.overlay {TemplateTop()}
//	}
//}
//
//struct Onboarding17View_Previews: PreviewProvider {
//	static var previews: some View {
//		Onboarding17View()
//	}
//}
// 
