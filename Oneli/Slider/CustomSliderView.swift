//
//  CustomSliderView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/14/23.
//

import SwiftUI

struct CustomSliderView: View {
	@Binding var value: Double
	var range: ClosedRange<Double> = 1...100
	
	var body: some View{
		
		
	 
			
			
			 
				HStack(spacing: (UIScreen.main.bounds .width - 160) / 55){
					ForEach(0..<51, id: \.self){ index in
						Rectangle()
							.fill(index % 5 == 0 ? Color.gray.opacity (0.5) : Color.black.opacity(0.7))
						frame(width: 2, height: index % 5 == 0 ? 20 : 12)
						
					}
				}
				SliderView(value: $value, sliderRange: range, thumbColor: .white,minTrackColor: .blue, maxTrackColor: .blue)
					.padding(.horizontal, 20)
					.frame(height: 35)
			 
		
	}
}

 
struct CustomSliderView_Previews: PreviewProvider {
	static var previews: some View {
		CustomSliderView(value: .constant(100.0), range: 100...300)
	}
}
