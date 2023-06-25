//
//  Onboarding06View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/12/23.
//

import SwiftUI
import Marquee
@available(iOS 16.4, *)
struct Onboarding06View: View {
	
		// MARK: Properties
	@State var startAngle: Double = 0
		// Since our to progress is 0.5
		// 0.5 * 360 = 180
	@State var toAngle: Double = 90
	
	@State var startProgress: CGFloat = 0
	@State var toProgress: CGFloat = 0.25
	@Environment(\.presentationMode) var presentationMode
	
	var body: some View {
		NavigationView{
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
						Text("How about changing your sleep time?")

							.foregroundColor(.black)
							.font(.custom("MarkPro", size: 28))
							.fixedSize(horizontal: false, vertical: true)
							.padding([.bottom,.leading], 1)
						Spacer()

					}
				}.frame(width: 342,height: 58)
			}.padding(.top,20)
				.padding(.bottom,40)




			
			
			SleepTimeSlider().scaleEffect(0.9)

			
			HStack(spacing: 25){
				
				let calendar = Calendar.current
				
				VStack(alignment: .leading, spacing: 8) {
					
					VStack(spacing: 8){
						Image("Sleep")
							.foregroundColor(Color(.gray))
						
						VStack(spacing: 3){
							Text("BEDTIME")
								.foregroundColor(.gray)
								.font(.custom("MarkPro", size: 15))
							
							
							Text(calendar.isDateInTomorrow(getTime(angle: startAngle)) ? "" : (calendar.isDateInYesterday(getTime(angle: startAngle)) ? "" : ""))
								.font(.caption2)
								.foregroundColor(.gray)
							
							Text(getTime(angle: startAngle).formatted(date: .omitted, time: .shortened))
								.font(.title2.bold())
						}
					}
				}
				.frame(maxWidth: .infinity,alignment: .center)
				Divider()
				VStack(alignment: .leading) {
					
					VStack(spacing: 8){
						Image("WakeUp")
							.foregroundColor(Color(.black))
						VStack(spacing: 3){
							Text("WAKEUP")
								.foregroundColor(.gray)
								.font(.custom("MarkPro", size: 15))
							
							
							Text(calendar.isDateInTomorrow(getTime(angle: toAngle)) ? "" : (calendar.isDateInYesterday(getTime(angle: toAngle)) ? "" : ""))
								.font(.caption2)
								.foregroundColor(.gray)
							
							Text(getTime(angle: toAngle).formatted(date: .omitted, time: .shortened))
								.font(.title2.bold())
						}
					}
				}
				.frame(maxWidth: .infinity,alignment: .center)
			}
			.padding()

			

			HStack {
				NavigationLink {
					Onboarding07View()
				} label: {
					Text("Change")
						.font(.custom("MarkPro", size: 17))
						.bold()
						.foregroundColor(.primary)

						.frame(width: 342, height: 50)
						.padding(.horizontal)
				}
			}

			.background(Color("Background1"))
			.cornerRadius(25)
			.frame(width:.infinity,height: 65)
			.padding([.top], 20)
			.padding([.bottom], 49)
			.padding([.trailing, .leading], 24)
			
			
		}
		.frame(maxWidth:.infinity,maxHeight: .infinity)
		.background(Color("Background3"))
	}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(Color("Background3"))
		.edgesIgnoringSafeArea(.all)
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
 
	
		// MARK: Sleep Time Circular Slider
	@ViewBuilder
	func SleepTimeSlider()-> some View{
		
		GeometryReader{proxy in
			
			let width = proxy.size.width
			
			ZStack{
				
					// MARK: Clock Design
				ZStack{
					
					ForEach(1...60,id: \.self){index in
						Rectangle()
							.fill(index % 5 == 0 ? .black : .gray)
							// Each hour will have big Line
							// 60/5 = 12
							// 12 Hours
							.frame(width: 2, height: index % 5 == 0 ? 10 : 5)
							// Setting into entire Circle
							.offset(y: (width - 60) / 2-16)
							.rotationEffect(.init(degrees: Double(index) * 6))
					}
					
						// MARK: Clock Text
					let texts = [12,6,12,6]
					ForEach(texts.indices,id: \.self){index in
						
						Text("\(texts[index])")
							.font(.caption.bold())
							.foregroundColor(Color(.gray))
							.rotationEffect(.init(degrees: Double(index) * -90))
							.offset(y: (width - 90) / 2-16)
							// 360/4 = 90
							.rotationEffect(.init(degrees: Double(index) * 90))
					}

				}
				
				Circle()
				
					.stroke(Color(.gray).opacity(0.2),lineWidth: 54)
					.frame(width: 342,height: 342)
				
					// Allowing Revrese Swiping
				let reverseRotation = (startProgress > toProgress) ? -Double((1 - startProgress) * 360) : 0
				Circle()
					.trim(from: startProgress > toProgress ? 0 : startProgress, to: toProgress + (-reverseRotation / 360))
					.stroke(Color("Background1"),style: StrokeStyle(lineWidth: 43, lineCap: .round, lineJoin: .round))
				
					.rotationEffect(.init(degrees: -90))
					.rotationEffect(.init(degrees: reverseRotation))
					.frame(width: 342,height: 342)
				
					// Slider Buttons
				Image("Sleep")
					.font(.callout)
					.foregroundColor(Color(.black))
					.frame(width: 30, height: 30)
					.rotationEffect(.init(degrees: 90))
					.rotationEffect(.init(degrees: -startAngle))
					.background(.white,in: Circle())
					// Moving To Right & Rotating
					.offset(x: width / 2)
					.rotationEffect(.init(degrees: startAngle))
					.gesture(
						
						DragGesture()
							.onChanged({ value in
								onDrag(value: value,fromSlider: true)
							})
					)
					.rotationEffect(.init(degrees: -90))
				
				Image("WakeUp")
					.font(.callout)
					.foregroundColor(Color(.black))
					.frame(width: 30, height: 30)
					// Rotating Image inside the Circle
					.rotationEffect(.init(degrees: 90))
					.rotationEffect(.init(degrees: -toAngle))
					.background(.white,in: Circle())
					// Moving To Right & Rotating
					.offset(x: width / 2)
					// To the Current Angle
					.rotationEffect(.init(degrees: toAngle))
					// For more About Circular Slider
					// Check out my Circular Slider Video
					// Link in Bio
					.gesture(
						
						DragGesture()
							.onChanged({ value in
								onDrag(value: value)

							})
					)
					.rotationEffect(.init(degrees: -90))
				
					// MARK: Hour Text
				
				VStack(spacing: 6){
					Text("SLEEP GOAL")
						.font(.custom("MarkPro", size: 12))
						.foregroundColor(Color("Secondary"))
					HStack{
						HStack(spacing:2){
							Text("\(getTimeDifference().0)")
								.font(.custom("MarkPro", size: 28))
								.foregroundColor(.black)
							Text("h")
								.font(.custom("MarkPro", size: 24))
								.foregroundColor(.black)
						}
						HStack(spacing:2){
							Text("\(getTimeDifference().1)")
								.foregroundColor(.black)
								.font(.custom("MarkPro", size: 28))
							
							Text("m")
								.font(.custom("MarkPro", size: 24))
								.foregroundColor(.black)
						}
						
					}
				}
				.scaleEffect(1.1)
			}
			
		}
		.frame(width: screenBounds().width / 1.2, height: screenBounds().width / 1.2)
	}
	
	func onDrag(value: DragGesture.Value,fromSlider: Bool = false){
		
			// MARK: Converting Translation into Angle
		let vector = CGVector(dx: value.location.x, dy: value.location.y)
		
			// Removing the Button Radius
			// Button Diameter = 30
			// Radius = 15
		let radians = atan2(vector.dy - 15, vector.dx - 15)
		
			// Converting into Angle
		var angle = radians * 180 / .pi
		if angle < 0{angle = 360 + angle}
		
			// Progress
		let progress = angle / 360
		
		if fromSlider{
			
				// Update From Values
			self.startAngle = angle
			self.startProgress = progress
		}
		else{
			
				// Update To Values
			self.toAngle = angle
			self.toProgress = progress
		}
	}
	
		// MARK: Returning Time based on Drag
	func getTime(angle: Double)->Date{
		
			// 360 / 15 = 24
			// 24 = Hours
		let progress = angle / 15
		
			// It will be 6.05
			// 6 is Hour
			// 0.5 is Minutes
		let hour = Int(progress)
			// Why 12
			// Since we're going to update time for each 5 minutes not for each minute
			// 0.1 = 5 minute
		let remainder = (progress.truncatingRemainder(dividingBy: 1) * 12).rounded()
		
		var minute = remainder * 5
			// This is because minutes are returning 60 (12*5)
			// avoiding that to get perfect time
		minute = (minute > 55 ? 55 : minute)
		
		let formatter = DateFormatter()
		formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
		
		let calendar = Calendar.current
		let components = calendar.dateComponents([.month,.day,.year], from: Date())
		
		let rawDay = (components.day ?? 0)
		var day: Int = 0
		
		if angle == toAngle{
			day = rawDay + 1
		}
		else{
			day = (startAngle > toAngle) ? rawDay : rawDay + 1
		}
		if let date = formatter.date(from: "\(components.year ?? 0)-\(components.month ?? 0)-\(day) \(hour == 24 ? 0 : hour):\(Int(minute)):00"){
			return date
		}
		return .init()
	}
	
	func getTimeDifference()->(Int,Int){
		
		let calendar = Calendar.current
		
		let result = calendar.dateComponents([.hour,.minute], from: getTime(angle: startAngle), to: getTime(angle: toAngle))
		
		return (result.hour ?? 0,result.minute ?? 0)
	}
}

@available(iOS 16.4, *)
struct Onboarding06View_Previews: PreviewProvider {
	static var previews: some View {
		Onboarding06View()
			.statusBarHidden()
	}
}

 
