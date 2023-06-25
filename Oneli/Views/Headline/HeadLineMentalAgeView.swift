//
//  HeadLineMentalAgeView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 2/12/23.
//

import SwiftUI

struct BarHeadLineMentalAgeview: View {
	var value: CGFloat = 0
	var text: String = ""
	var body: some View {
		VStack{
			
			ZStack (alignment: .bottom){
				Rectangle().frame(width: 17, height: 200)
					.foregroundColor(Color(.gray)).opacity(0)
					.cornerRadius(10)
					.scaledToFit()
				Spacer(minLength: 5)
				Rectangle().frame(width: 17, height: value ).foregroundColor(Color(red: 0.169, green: 0.192, blue: 0.239)).opacity(0.12)
					.cornerRadius(10)
					.scaledToFit()
			}.scaleEffect(0.65)
			
			
			Text(text)
				.foregroundColor(.gray)
				.font(.custom("MarkPro", size: 11))
		}
	}
}





