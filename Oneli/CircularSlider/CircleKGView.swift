//
//  CircleKGView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/11/23.
//
import SwiftUI
import Foundation

struct CircleKGView: View {
	
	@State var kilogram: Int = 0
	let circleWeight: CGFloat = 2
	var body: some View {
		VStack {
			
			
			 
			
				 
			ZStack{
				
				
				CircularRular(kilogram: $kilogram)
					.foregroundColor(.black)
			}.overlay {
				VStack(alignment: .center, spacing: 0){
					
					HStack {
						Text("\(kilogram)")
							.font(.custom("MarkPro", size: 28))
							.bold()
							.foregroundColor(.black)
						Text("kg")
							.font(.custom("MarkPro",size: 20))
							.foregroundColor(.black)
						
						
					}
					
					
					VStack{
						Rectangle()
							.fill(
								LinearGradient(
									gradient: Gradient(colors: [
										Color(.sRGB, red: 240/255, green: 112/255, blue: 112/255, opacity: 1),
										Color(.sRGB, red: 240/255, green: 112/255, blue: 112/255, opacity: 0)
									]),
									startPoint: .top,
									endPoint: .bottom
								)
							)
							.frame(width: 4,height: 389)
					}
					
					
				}
			}
			
			
			
		}.frame(width: .infinity, height: .infinity)
	}
	
}

struct CircleKGView_Previews: PreviewProvider {
	static var previews: some View {
		CircleKGView()
	}
}

struct CircularRular: View {
	@Binding var kilogram: Int
	
	@State var rotate: CGFloat = 0.0
	@State var dragValue: CGFloat = 10.0
	
	var body: some View {
		ZStack {
			Circle()
				.stroke(Color.gray, style: StrokeStyle(lineWidth: 16, lineCap: .butt, dash: [2, 13]))
				.scaleEffect(1.05)
				 
			
			Circle()
				.stroke(Color(red: 191, green: 193, blue: 197).opacity(1), style: StrokeStyle(lineWidth: 24, lineCap: .butt, dash: [10, 40]))
				 
			
			Circle()
				.stroke(Color.gray, lineWidth: 8)
				.scaleEffect(1.11)
				.overlay(Circle()
				.stroke(Color.clear, lineWidth: 5)
				.scaleEffect(1.15)
				.blur(radius: 50)
				)
			
			Circle()
				.stroke(Color.gray, lineWidth: 8)
				.scaleEffect(1.11)
				.overlay(Circle()
					 
					.stroke(Color(red: 191, green: 193, blue: 197).opacity(1), lineWidth: 8)
					.scaleEffect(1.15)
					
				)
				.frame(width: 428,height: 428)
			
			
		}
		.rotationEffect(.degrees(Double(rotate)))
		.frame(width: 540, height: 540)
		.offset(x: 1,y:260)
		.gesture(DragGesture(minimumDistance: 5)
			.onChanged({ value in
				withAnimation(.easeInOut(duration: 0.1)) {
					changeValue(height: value.translation.height)
				}
			})
				.onEnded({ _ in
					rotate = 0.0
					dragValue = 0.0
				})
				 
		)
	}
	
	private func changeValue(height: CGFloat) {
		let tempValue = dragValue
		dragValue = height
		rotate = height/5 * (-1)
		let diff = tempValue - dragValue
		kilogram = Int(CGFloat(kilogram) + diff/2)
	}
	
}
 
