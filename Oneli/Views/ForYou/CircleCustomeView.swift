//
//  CircleCustomeView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 2/20/23.
//

import SwiftUI


struct CircleCustomeView: View {
	@State private var number: Double = 0
	@State var nameImage: String
	var body: some View {
		ZStack { // Rings start
				
			
				// Inactive
			Circle()
			//	.trim(from: 100, to: CGFloat(number/100))
				.stroke(style: .init(lineWidth: 12, lineCap: .round, lineJoin: .round))
				.foregroundColor(Color("Teriary").opacity(0.5))
				.frame(maxWidth: 98, maxHeight: 98)
				//.rotationEffect(.degrees(-90))
				//.shadow(radius: 5)
				// Active
			Circle()
				.trim(from: 0, to: CGFloat(number/100))
				.stroke(style: .init(lineWidth: 12, lineCap: .round, lineJoin: .round))
				.foregroundColor(Color("Secondary"))
				.frame(maxWidth: 98, maxHeight: 98)
				.rotationEffect(.degrees(-90))
				//.shadow(radius: 5)
			
			VStack {
					
				Image(nameImage)
			}
		} // Rings end
		.onAppear{
			withAnimation(.easeInOut(duration: 2)) {
				number = .random(in: 0 ..< 100)
			}
		}
	}
}

struct CircleCustomeView_Previews: PreviewProvider {
	static var previews: some View {
		CircleCustomeView(nameImage: "CalerieBurner")
			.preferredColorScheme(.light)
	}
}
