//
//  Onboarding11View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/27/23.
//

import SwiftUI
import CompactSlider

@available(iOS 16.4, *)
struct Onboarding11View: View {
	@Environment(\.presentationMode) var presentationMode
	
	var title: String
	 
	@Environment(\.dismiss) private var dismiss
	
	@State  var lowerValue: Double = 30.0
	@State  var upperValue: Double = 300.0
	@State  var lowerValue2: Double = 8
	@State  var upperValue2: Double = 17
	@State  var defaultValue: Double = 0.5
	@State  var defaultValue2: Double = 0.0
	@State  var defaultValue3: Double = 0.0
	@State  var stepValue: Double = 50
	 
	@State var value: Int = 30
 
	 
 
		
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
					}.padding([ .leading], 44)
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
							Text("How tall are you?")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 28))
								.multilineTextAlignment(.trailing)
								.lineLimit(1)

							Spacer()
						}.padding(.horizontal)

					}.padding(.horizontal)
						.frame(width: screenBounds().width, height: 58)

				}.padding([.top], 20)
					.padding(20)
					.overlay {

						VStack{

							CompactSlider(from: $lowerValue2, to: $upperValue2, in: 30...300, step: 1) {
									//Text("Tall")


							}.rotationEffect(Angle(degrees: 90))
						}.offset(x:70,y:140)
							.scaleEffect(3)
							.padding()
					}


				Spacer()
				VStack{
					HStack{
						HStack{
							Text(String(format: "%.f", upperValue2))
								.font(.custom("MarkPro", size: 28))
								.bold()

							Text("cm")
								.font(.custom("MarkPro", size: 20))
								.bold()
								//Text("\(Double(upperValue2))")
								.offset(x:-0,y:3)

						}.offset(x:-150,y:0)

						Rectangle()
							.fill(LinearGradient(
								gradient: Gradient(colors: [
									Color(.sRGB, red: 240/255, green: 112/255, blue: 112/255, opacity: 0.12),
									Color(.sRGB, red: 240/255, green: 112/255, blue: 112/255, opacity: 1)
								]),
								startPoint: .top,
								endPoint: .bottom
							)
							)
							.frame(width: 4,height: 300)
							.rotationEffect(Angle(degrees: 90))
					}.offset(x:-0,y:10)


				}


				Spacer()
				HStack{
					HStack {
						NavigationLink {
							Onboarding12View()
						} label: {
							Text("Next")
								.font(.custom("MarkPro", size: 17))
								.bold()
								.foregroundColor(.primary)

								.frame(width: 342, height: 50)
								.padding(.horizontal)
						}
					}

					.background(Color("Background2"))
					.cornerRadius(25)
					.padding([.top], 20)
					.padding([.bottom], 45)
					.padding([.trailing, .leading], 24)
				}
				.frame(height: 139 )
				.cornerRadius(20)

				.padding([.trailing,.leading],24)


			}.frame(maxWidth: .infinity, maxHeight: .infinity)

				.background(Color("Background3"))
				.edgesIgnoringSafeArea(.all)
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
//			.overlay(content: {
//			
//					TemplateTop()
//						.edgesIgnoringSafeArea(.all)
//				 Spacer()
//				
//			})
		
			.statusBarHidden()
			.navigationBarBackButtonHidden()
	}
	//@ViewBuilder
	//private var singleValueSliders: some View {
			// 1. The default case.
//		CompactSlider(value: $defaultValue) {
//			Text("Default")
//			Spacer()
//			Text(String(format: "%.2f", defaultValue))
//				.monospacedDigitIfPossible()
//		}
//
		
			// 2. Handle in the centre for better representation of negative values.
//		CompactSlider(value: $defaultValue2, in: -1.0...1.0, direction: .center) {
//			Text("Center")
//			Spacer()
//			Text(String(format: "%.2f", defaultValue2))
//				.monospacedDigitIfPossible()
//		}
//
			// 3. The value is filled in on the right-hand side.
//		CompactSlider(value: $defaultValue, direction: .trailing) {
//			Text("Trailing")
//			Spacer()
//			Text(String(format: "%.2f", defaultValue))
//				.monospacedDigitIfPossible()
//		}.rotationEffect(Angle(degrees: 90))
	//}
	
	@ViewBuilder
	private var snappedValueSliders: some View {
			// 4. Snapped value
		HStack {
#if os(watchOS)
			CompactSlider(value: $stepValue, in: 0...160, step: 5) {
				Text("Speed")
				Spacer()
				Text("\(Int(stepValue))")
			}
#else
			Text("Speed:")
			CompactSlider(value: $stepValue, in: 0...160, step: 5) {}
			Text("\(Int(stepValue))")
				.monospacedDigitIfPossible()
#endif
		}
		
			// 5. Handle in the centre for better representation of negative values.
		CompactSlider(value: $defaultValue3, in: -1.0...1.0, step: 0.1, direction: .center) {
#if os(watchOS)
			Text("Center")
#else
			Text("Center (step 10%)")
#endif
			Spacer()
			Text("\(Int(100 * defaultValue3))%")
				.monospacedDigitIfPossible()
		}
	}
}

@available(iOS 16.4, *)
struct Onboarding11View_Previews: PreviewProvider {
	 
	static var previews: some View {
		Onboarding11View(title: "How tall are you?")
			.statusBarHidden()
			 
	}
}
 
 


 
 
