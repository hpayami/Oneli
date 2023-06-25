	//
	//  Seperator.swift
	//  Oneli
	//
	//  Created by PhD Hossein Payami on 3/6/23.
	//

import SwiftUI

struct Seperator: View {
	var body: some View {
		VStack{
			HStack{
				Text(".....................................")
					.frame(width:120, height: 2)
					.foregroundColor(.gray)
					.padding()
				Text("OR")
					.font(Font.custom("MarkPro-Medium", size: 15, relativeTo: .subheadline))
					.frame(width: 23, height: 20)
					.foregroundColor(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.3))
					.padding()
				
				Text("....................................")
					.foregroundColor(.gray)
					.frame(width:120, height: 2)
					.padding()
			}
		}
	
	}
}


struct Seperator_Previews: PreviewProvider {
	static var previews: some View {
		Seperator()
	}
}
