//
//  SwiftUIView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/25/23.
//

 

		import SwiftUI
		
		struct SwiftUIView: View {
			@State var size = UIScreen.main.bounds.width - 100
			@State var progress: CGFloat = 0
			@State var angle: Double = 0
			var body: some View {
				VStack {
					ZStack {
						Circle()
							.stroke(Color("stroke"), style: StrokeStyle(lineWidth: 55, lineCap: .round, lineJoin: .round))
							.frame(width: size, height: size)
						
							// Progress
						Circle()
							.trim(from: 0, to: progress)
							.stroke(Color.gray, style: StrokeStyle(lineWidth: 55, lineCap: .butt))
						
							.frame(width: size, height: size)
							.rotationEffect(.init(degrees: -90))
						
							// Inner finish curve
						Circle()
							.fill(Color("stroke"))
							.frame(width: 55, height: 55)
							.offset(x: size / 2)
							.rotationEffect(.init(degrees: -90))
							.gesture(
								DragGesture()
									.onChanged(onDrag(value:))
							)
							.rotationEffect(.init(degrees: 90))
						
							// Drag Circle
						Circle()
							.fill(Color.white)
							.frame(width: 50, height: 55)
							.offset(x: size / 2)
							.rotationEffect(.init(degrees: angle))
							// Add gesture
							.gesture(
								DragGesture()
									.onChanged(onDrag(value:))
							)
							.rotationEffect(.init(degrees: -90))
						
							// Sample $200
						Text(String(format: "%.0f", progress * 200) + "kg")
							.font(.custom("MarkPro", size: 28))
						
					}
					.padding()
					HStack{
						VStack{
							Button {
								
							} label: {
								Text("Next")
							}
							
						}.padding()
						.frame(width: 342,height: 50)
							.background(Color("Background3"))
							.cornerRadius(25)
						
					}.padding()
					
				}.padding()
			}
			
			func onDrag(value: DragGesture.Value) {
					// Calculate radians
				let vector = CGVector(dx: value.location.x, dy: value.location.y)
					// Since atan2 will give from -180 to 180
					// Eliminate drag gesture size
					// Size = 55 => Radius = 27.5
				let radians = atan2(vector.dy - 27.5, vector.dx - 27.5)
				
					// Convert to angle
				var angle = radians * 180 / .pi
				
					// Simple technique for 0 to 360
				if angle < 0 {
					angle += 360
				}
				
				withAnimation(Animation.linear(duration: 0.15)) {
						// Progress
					let progress = angle / 360
					self.progress = progress
					self.angle = Double(angle)
					
				}
			}
		}
		
		struct SwiftUIView_Previews: PreviewProvider {
			static var previews: some View {
				SwiftUIView()
			}
		}

