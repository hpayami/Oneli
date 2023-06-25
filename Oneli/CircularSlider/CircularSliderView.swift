//
//  CircularSliderView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/30/23.
//

import SwiftUI

 

struct CircularSliderView: View {
	@State var directionValue: CGFloat = 0.0
	@State var secondaryDirectionValue: CGFloat = 0.0
	var body: some View {
	 
			VStack {
			
					
					DirectionControlView(directionValue: $directionValue, secondaryDirectionValue: $secondaryDirectionValue)
						.padding(.top, 60)
						
				HStack{
					Spacer()
					Text("\(Double().degreesToCompassDirection(degree: Double(secondaryDirectionValue)))")
						.font(.custom("MarkPro", size: 28))
						.foregroundColor(Color(.black))
						.bold()
					Text("kg")
						.font(.custom("MarkPro", size: 22))
						.foregroundColor(Color(.black))
						.bold()
					
					
					
					Spacer()
				}.padding(.top,65)
				
						
					
					 
				}
			}//: VSTACK
		 
		
	}


struct SwellCircularSliderView_Previews: PreviewProvider {
	static var previews: some View {
		CircularSliderView()
	}
}

 

struct DirectionControlView: View {
	@Binding var directionValue: CGFloat
	@State var dirAngleValue: CGFloat = 0.0
	
	@Binding var secondaryDirectionValue: CGFloat
	@State var secondaryDirAngleValue: CGFloat = 0.0
	let totalValue: CGFloat = 360.0
	
	let minimumValue: CGFloat = 0
	let maximumValue: CGFloat = 360.0
	
	let knobRadius: CGFloat = 10.0
	let radius: CGFloat = 125.0
	
	private let tickHeight: CGFloat = 8
	private let longTickHeight: CGFloat = 14
	private let tickWidth: CGFloat = 2
	
	func minimumTrimValue() -> CGFloat{
		if directionValue > secondaryDirectionValue {
			return secondaryDirectionValue/totalValue
		} else {
			return directionValue/totalValue
		}
	}
	
	func maximumTrimValue() -> CGFloat{
		if  directionValue > secondaryDirectionValue {
			return directionValue/totalValue
		} else {
			return secondaryDirectionValue/totalValue
		}
	}
	
	var body: some View {
		ZStack {
			
			Circle()
				.trim(from: minimumTrimValue(), to: maximumTrimValue())
				.stroke(
					AngularGradient(gradient: Gradient(
						colors: [Color.red.opacity(0.8), Color.blue.opacity(1), Color.blue.opacity(0.2)]),
									center: .center,
									startAngle: .degrees(Double(secondaryDirectionValue)),
									endAngle: .degrees(Double(directionValue))),
					style: StrokeStyle(lineWidth: 14, lineCap: .round)
				)
				.frame(width: radius * 2, height: radius * 2)
				.rotationEffect(.degrees(-90))
			
			KnobCircle(radius: knobRadius * 2, padding: 6)
				.offset(y: -radius)
				.rotationEffect(Angle.degrees(Double(dirAngleValue)))
				.shadow(color: Color.black.opacity(0.2), radius: 3, x: -3)
				.gesture(DragGesture(minimumDistance: 0.0)
					.onChanged({ angleValue in
						knobChange(location: angleValue.location)
					}))
			
			KnobCircle(radius: knobRadius * 2, padding: 6)
				.offset(y: -radius)
				.rotationEffect(Angle.degrees(Double(secondaryDirectionValue)))
				.shadow(color: Color.black.opacity(0.2), radius: 3, x: -3)
				.gesture(DragGesture(minimumDistance: 0.0)
					.onChanged({ angleValue in
						knobSecondaryChange(location: angleValue.location)
					}))
			
			CompassView(count: 240,
						longDivider: 15,
						longTickHeight: self.longTickHeight,
						tickHeight: self.tickHeight,
						tickWidth: self.tickWidth,
						highlightedColorDivider: 30,
						highlightedColor: .blue,
						normalColor: .black.opacity(0.2))
			.frame(width: 350, height: 350)
			
			
			CompassNumber(numbers: self.getNumbers(count: 16))
				.frame(width: 310, height: 310)
			
		}//: ZSTACK
		.onAppear(){
			updateInitialValue()
		}
	}
	
	private func getNumbers(count: Int) -> [Float] {
		var numbers: [Float] = []
		numbers.append(Float(count) * 24)
		for index in 1..<count {
			numbers.append(Float(index) * 24)
		}
		return numbers
	}
	
	private func updateInitialValue(){
		directionValue = minimumValue
		dirAngleValue = CGFloat(directionValue/totalValue) * 360
	}
	
	
	private func knobChange(location: CGPoint) {
		let vector = CGVector(dx: location.x, dy: location.y)
		let angle = atan2(vector.dy - knobRadius, vector.dx - knobRadius) + .pi/2.0
		let fixedAngle = angle < 0.0 ? angle + 2.0 * .pi : angle
		let value = fixedAngle / (2.0 * .pi) * totalValue
		
		if value > minimumValue && value < maximumValue {
			directionValue = value
			dirAngleValue = fixedAngle * 180 / .pi
		}
		
	}
	
	private func knobSecondaryChange(location: CGPoint) {
		let vector = CGVector(dx: location.x, dy: location.y)
		let angle = atan2(vector.dy - knobRadius, vector.dx - knobRadius) + .pi/2.0
		let fixedAngle = angle < 0.0 ? angle + 2.0 * .pi : angle
		let value = fixedAngle / (2.0 * .pi) * totalValue
		
		if value > minimumValue && value < maximumValue {
			secondaryDirectionValue = value
			secondaryDirAngleValue = fixedAngle * 180 / .pi
		}
		
	}
}

struct KnobCircle: View {
	let radius: CGFloat
	let padding: CGFloat
	
	var body: some View {
		ZStack(){
			Circle()
				.fill(Color.init(white: 0.96))
				.frame(width: radius, height: radius)
				.shadow(color: Color.black.opacity(0.1), radius: 10, x: -10, y: 8)
			
			Circle()
				.fill(Color.white)
				.frame(width: radius - padding, height: radius - padding)
		}//: ZSTACK
	}
}

struct CompassView: View {
	let count: Int
	let longDivider: Int
	let longTickHeight: CGFloat
	let tickHeight: CGFloat
	let tickWidth: CGFloat
	
	let highlightedColorDivider: Int
	let highlightedColor: Color
	let normalColor: Color
	
	var body: some View {
		ZStack(){
			ForEach(0..<self.count) { index in
				let height = (index % self.longDivider == 0) ? self.longTickHeight : self.tickHeight
				let color = (index % self.highlightedColorDivider == 0) ? self.highlightedColor : self.normalColor
				let degree: Double = Double.pi * 2 / Double(self.count)
				TickShape(tickHeight: height)
					.stroke(lineWidth: self.tickWidth)
					.rotationEffect(.radians(degree * Double(index)))
					.foregroundColor(color)
				
			}
		}//: ZSTACK
	}//: VIEW
}

struct TickShape: Shape {
	let tickHeight: CGFloat
	
	func path(in rect: CGRect) -> Path {
		var path = Path()
		path.move(to: CGPoint(x: rect.midX, y: rect.minY))
		path.addLine(to: CGPoint(x: rect.midX, y: rect.minY + self.tickHeight))
		return path
	}
}


struct CompassNumber: View {
	let numbers: [Float]
	let direction: [String] = ["30","40","50","60","70","80","90","100","110", "120","130","140", "150", "160", "170", "180", "190"]
	
	var body: some View {
		ZStack(){
			ForEach(0..<self.direction.count) { index in
				let degree: Double = Double.pi * 2 / Double(self.direction.count)
				let itemDegree = degree * Double(index)
				VStack(){
					Text(self.direction[index])
						.font(.footnote)
						.rotationEffect(.radians(-itemDegree))
						.foregroundColor(.black)
					Spacer()
				}//: VSTACK
				.rotationEffect(.radians(itemDegree))
			}
		}//: ZSTACK
	}
}


extension Double {
	
	func degreesToCompassDirection(degree: Double) -> String {
		
		switch degree {
			case 0..<1:
				return "30"
			case 11.25..<33.75:
				return "40"
			case 33.75..<56.25:
				return "50"
			case 56.25..<78.75:
				return "60"
			case 78.75..<101.25:
				return "70"
			case 101.25..<123.75:
				return "80"
			case 123.75..<146.25:
				return "90"
			case 146.25..<168.75:
				return "100"
			case 168.75..<191.25:
				return "110"
			case 191.25..<213.75:
				return "120"
			case 213.75..<236.25:
				return "130"
			case 236.25..<258.75:
				return "140"
			case 258.75..<281.25:
				return "150"
			case 281.25..<303.75:
				return "160"
			case 303.75..<326.25:
				return "170"
			case 326.25..<348.75:
				return "180"
			case 348.75..<360:
				return "190"
			default:
				return "30"
		}
	}
}
