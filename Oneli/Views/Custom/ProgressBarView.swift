//
//  ProgressBarView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 2/12/23.
//

import SwiftUI

struct ProgressBarView: View {
	@State private var number: Double = 0.0
	
	var body: some View {
		ZStack { // Rings start
			Circle() // Inactive
				.stroke(style: .init(lineWidth: 15, lineCap: .round, lineJoin: .round))
				.foregroundColor(Color(.systemGray4))
				.frame(maxWidth: 125, maxHeight: 125)
				// Active
			Circle()
				.trim(from: 0, to: CGFloat(number/800))
				.stroke(style: .init(lineWidth: 15, lineCap: .round, lineJoin: .round))
				.foregroundColor(.accentColor)
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
				
			 
				
			}
		} // Rings end
		.onAppear{
			withAnimation(.easeInOut(duration: 5)) {
				number = .random(in: 0.0 ..< 100)
			}
		}
	}
}

struct ProgressBarView_Previews: PreviewProvider {
	static var previews: some View {
		ProgressBarView()
			.preferredColorScheme(.light)
	}
}
