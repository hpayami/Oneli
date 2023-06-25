//
//  Game07View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/16/23.
//

 

import SwiftUI
struct Line {
	var points: [CGPoint]
	var color: Color
}
struct Game07View: View {
	
	@State private var lines: [Line] = []
	@State private var selectedColor = Color.orange
	@Environment(\.presentationMode) var presentationMode
	
	@State var isRotating = true
	@State var isPresented = true
	@Environment(\.dismiss) private var dismiss
	@State var newMessage: String = ""
	@State private var message = ""
	@State private var messages: [String] = []
	
	private var greenCount: Int = 0
	private var redCount: Int = 0
	private var gameGreen: Int = Int.random(in: 1..<8)
	private var gameRed: Int = Int.random(in: 1..<8)
	private var result: Int = 0
	var body: some View {
		
		VStack{
			
			VStack{
					//Button Back
				HStack {
					Spacer()
					Button {
						presentationMode.wrappedValue.dismiss()
					} label: {
						Image("Close")
							.padding(.leading,3)
					}
					
					
				}.padding()
				
				VStack(spacing: 8){
					HStack{
						Image("Oneli")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(width: 38 , height: 16)
							.foregroundColor(Color("Secondary"))
							.padding([.top,.leading], 1)
						Spacer()
					}
					
					HStack{
						
						
						Text("Doodling...")
						
							.foregroundColor(.black)
							.font(.custom("MarkPro", size: 28))
							.fixedSize(horizontal: false, vertical: true)
							.padding([.bottom,.leading], 1)
						Spacer()
						
						
						
					}
				}
				.frame(width: .infinity,height: 58).padding(.all).padding()
				.padding(.top,2)
			}.padding(.top,20)
			 
			
			
		 
			VStack{
				Canvas {ctx, size in
					for line in lines {
						var path = Path()
						path.addLines(line.points)
						
						ctx.stroke(path, with: .color(line.color), style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
					}
				}
				.gesture(
					DragGesture(minimumDistance: 0, coordinateSpace: .local)
						.onChanged({ value in
							let position = value.location
							
							if value.translation == .zero {
								lines.append(Line(points: [position], color: selectedColor))
							} else {
								guard let lastIdx = lines.indices.last else {
									return
								}
								
								lines[lastIdx].points.append(position)
							}
						})
				)
			}
			 
			.frame(maxWidth: screenBounds().width-40 ,maxHeight: 524)
			
			.background(Color("Background1"))
			.cornerRadius(25)
			HStack {
				ForEach([Color.green, .orange, .blue, .red, .pink, .black, .purple], id: \.self) { color in
					colorButton(color: color)
						.cornerRadius(25)
				}
			 
				clearButton()
			}.padding([.top], 25)
				
				//footer
			
			
			VStack{
				HStack (spacing: 24){
					
					
					
					Button {
						
					} label: {
						Text("Skip")
							.font(.custom("MarkPro", size: 17))
							.bold()
							.foregroundColor(Color(.black))
							.frame(width: 159, height: 50)
							.background(
								Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.12))
						
						
					}.cornerRadius(25)
					
					Button {
						
					} label: {
						Text("Done")
							.font(.custom("MarkPro", size: 17))
							.bold()
							.foregroundColor(Color(.black))
							.frame(width: 159, height: 50)
							.background(
								Color(red: 1, green: 1, blue: 1).opacity(1))
						
						
					}.cornerRadius(25)
					
					
					
				}
				.padding([.trailing,.leading],24)
				.padding(.bottom,45)
				
				.cornerRadius(25)
			}.padding([.top,.bottom], 25)
			
			
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1))
		.edgesIgnoringSafeArea(.all)
		.statusBarHidden()
		
		
	}
	@ViewBuilder
	func colorButton(color: Color) -> some View {
		Button {
			selectedColor = color
		} label: {
			Image(systemName: "circle.fill")
				.font(.largeTitle)
				.foregroundColor(color)
				.mask {
					Image(systemName: "pencil.tip")
						.font(.largeTitle)
				}
				.background(Color("Background3"))
				.cornerRadius(25)
		}
	}
	
	@ViewBuilder
	func clearButton() -> some View {
		Button {
			lines = []
		} label: {
			Image(systemName: "pencil.tip.crop.circle.badge.minus")
				.font(.largeTitle)
				.foregroundColor(.gray)
		}
	}
}
struct Game07View_Previews: PreviewProvider {
	static var previews: some View {
		Game07View()
			.statusBarHidden()
	}
}
 
