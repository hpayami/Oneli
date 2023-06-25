//
//  SliderHorizintaly.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/27/23.
//

import Foundation
import SwiftUI
 
struct SliderHorizontaly: View {
	@State private var value: Double = 0
	 
	
	private var formatter: NumberFormatter {
		let f = NumberFormatter()
		f.numberStyle = .none
		f.maximumFractionDigits = 0
		return f
	}
	
	var body: some View {
		 Text("Test")
 
	}
}

struct SliderHorizontaly_Previews: PreviewProvider {
	static var previews: some View {
		ZStack{
			SliderHorizontaly()
		}
	}
}
