//
//  SwiftUI2View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/26/23.
//

import SwiftUI

struct SliderCircularView: View {
	@State var sliderValue : Double = 0
	
	var body: some View {
		VStack {
			CircularSlider(currentValue: $sliderValue , showsCurrentValueAsText: true)
			CircularSlider(currentValue: $sliderValue, lineWidth: 5)
			Text("Current Slider Value: \(Int(sliderValue))")
			Slider(value: $sliderValue, in: 0...10) {
				Text("Slider")
			}
		    minimumValueLabel: {
				Text("0").font(.title2).fontWeight(.thin)
			} maximumValueLabel: {
				Text("10").font(.title2).fontWeight(.thin)
			}.tint(.red)
				.padding()
		}
	}
}

struct SliderCircularView_Previews: PreviewProvider {
	static var previews: some View {
		SliderCircularView()
		
	}
}

 
