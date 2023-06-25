	//
	//  CircleForYouHomeView.swift
	//  Oneli
	//
	//  Created by PhD Hossein Payami on 2/20/23.
	//
 

import SwiftUI

 

struct AnimatableNumberModifier1: AnimatableModifier {
	var animatableData: Int
	
	init(number: Int) {
		animatableData = number
	}
	
	func body(content: Content) -> some View {
		content
			.overlay(
				Text("\(animatableData)%")
					.lineLimit(1)
					.minimumScaleFactor(0.5)
					.font(.largeTitle)
			)
	}
}

 
struct CircleForYouHomeView: View {
	@State private var number: Double = 0.0
	
	var body: some View {
		ZStack { // Rings start
			Circle() // Inactive
				.stroke(style: .init(lineWidth: 10, lineCap: .round, lineJoin: .round))
				.foregroundColor(Color(.systemGray4))
				.frame(maxWidth: 125, maxHeight: 125)
				// Active
			Circle()
				.trim(from: 0, to: CGFloat(number/100))
				.stroke(style: .init(lineWidth: 10, lineCap: .round, lineJoin: .round))
				.foregroundColor(Color("Secondary"))
				.frame(maxWidth: 125, maxHeight: 125)
				.rotationEffect(.degrees(-90))
				.shadow(radius: 5)
			
			VStack {
					//				Image(systemName: "figure.walk")
					//					.font(.largeTitle)
					//					.font(.system(size: 64, weight: .bold, design: .rounded))
				Color.clear
					.font(.largeTitle)
					.frame(width: 128, height: 128)
					.animatingOverlay(for: Int(number))
				
					//				Text("Today")
					//					.foregroundColor(.secondary)
					//				Text("Goal 10 000")
					//					.foregroundColor(.secondary)
				
			}
		} // Rings end
		.onAppear{
			withAnimation(.easeInOut(duration: 1)) {
				number = .random(in: 0 ..< 100)
			}
		}
	}
}

struct CircleForYoyHomeView_Previews: PreviewProvider {
	static var previews: some View {
		CircleForYouHomeView()
			.preferredColorScheme(.light)
	}
}
