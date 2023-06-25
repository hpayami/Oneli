//
//  BarView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/26/23.
//

import SwiftUI
 
struct Bar01View: View {
	let color = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
	let bgColor = Color.gray
	
	@State var pickerSelectedItem = 0
	@State var dataPoints: [[CGFloat]] = [
		[50,200,150,180,130,80,205],
		[150,120,150,200,120,10,25],
		[30,100,15,20,130,15,25]
	]
	var body: some View {
		VStack{
			bgColor.edgesIgnoringSafeArea(.all)
			VStack{
				VStack{
					Menu("Today" ){
						Button {
							pickerSelectedItem = 0
						} label: {
							Text("Today")
						}
						Button {
							pickerSelectedItem = 1
						} label: {
							Text("Weekly")
						}
						Button {
							pickerSelectedItem = 2
						} label: {
							Text("Monthly")
						}

					}.padding(.horizontal,24)
//					Picker(selection: $pickerSelectedItem, label: Text("xxx")) {
//						Text("Today").tag(0)
//						Text("Weekly").tag(1)
//						Text("Monthly").tag(2)
//					}.pickerStyle(.menu)
						
				}
				HStack(spacing: 10){
					Barview(value: dataPoints[pickerSelectedItem][0])
					Barview(value: dataPoints[pickerSelectedItem][1])
					Barview(value: dataPoints[pickerSelectedItem][2])
					Barview(value: dataPoints[pickerSelectedItem][3])
					Barview(value: dataPoints[pickerSelectedItem][4])
					Barview(value: dataPoints[pickerSelectedItem][5])
					Barview(value: dataPoints[pickerSelectedItem][6])
				}
			}
			
		}
	}
}
struct Barview: View {
	var value: CGFloat = 0
	var text: String = ""
	var body: some View {
		VStack{
			
			VStack {
				//Rectangle().frame(width: 42, height: 200)
					//.foregroundColor(Color(.gray)).opacity(0.1)
					//.cornerRadius(10)
					//.scaledToFit()
				//Spacer(minLength: 5)
				Spacer()
				Rectangle().frame(width: 42, height: value ).foregroundColor(Color("Secondary"))
					.cornerRadius(10)
					.scaledToFit()
			}.scaleEffect(0.99)
				.padding(.bottom,0)
			
			Text(text).padding(.top,5)
				.foregroundColor(.gray)
				.font(.custom("MarkPro", size: 11))
		}
	}
}
struct Bar01View_Previews: PreviewProvider {
	static var previews: some View {
		Bar01View()
	}
}
