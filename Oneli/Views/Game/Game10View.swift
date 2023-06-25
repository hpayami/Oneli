//
//  Game10View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/17/23.
//

import SwiftUI

struct Game10View: View {


	
	@Environment(\.presentationMode) var presentationMode
	@State private var degreesA1 = 0.0
	@State private var degreesA2 = 0.0
	@State private var degreesA3 = 0.0
	@State private var degreesA4 = 0.0
	@State private var degreesA5 = 0.0
	@State private var degreesA6 = 0.0
	@State private var degreesA7 = 0.0
	@State private var degreesA8 = 0.0
	@State private var degreesA9 = 0.0
	@State private var degreesA10 = 0.0
	@State private var degreesA11 = 0.0
	@State private var degreesA12 = 0.0
	
	@State private var col = 3
	@State private var rowC = 4
	
	@State var isRotating = true
	@State var isPresented = true
	@Environment(\.dismiss) private var dismiss
	@State var number: Int = 1
		//Heads
		//@State var HeadB1: [String] = ["B1", "B2", "B3", "B4"]
		//@State var HeadA: [String] = ["A8", "A9", "A10", "A11"]
		//@State var HeadG: [String] = ["G8", "G9", "G10", "G11"]
	
	var body: some View {
		
		VStack{
			Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1)
				.edgesIgnoringSafeArea(.all)
			VStack{
					//Button Back
				HStack {
					Spacer()
					Button {
						presentationMode.wrappedValue.dismiss()
					} label: {
						Image("Close")
							.padding()
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
						
						Text("This is a maze solving game.")
						
							.foregroundColor(.black)
							.font(.custom("MarkPro", size: 28))
							.fixedSize(horizontal: true, vertical: true)
							.padding([.bottom,.leading], 1)
						Spacer()
						
						
						
					}
				}
				.frame(width: .infinity,height: 58)
				.padding()
				.padding(.top,30)
			}
			.padding(.top,20)
			.padding(.bottom,40)
			
//			VStack(spacing: 10) {
//				ForEach(maze, id: \.self) { row in
//					HStack(spacing: 10) {
//						ForEach(row, id: \.self) { button in
//							maze()
//						}
//					}
//				}
//			}
			 
//
//			[[MazeButton(image: "A7",action: print("A7")),
//			MazeButton(image: "A8",action: print("A8")),
//			MazeButton(image: "A9",action: print("A9"))]
//			,
//			[MazeButton(image: "A10",action: print("A10")),
//			MazeButton(image: "A12",action: print("A11")),
//			MazeButton(image: "A1",action: print("A1"))]
//			,
//			[MazeButton(image: "A2",action: print("A2")),
//			MazeButton(image: "A3",action: print("A3")),
//			MazeButton(image: "A4",action: print("A4"))]
//			,
//			[MazeButton(image: "A5",action: print("A5")),
//			MazeButton(image: "A6",action: print("A6")),
//			MazeButton(image: "A11",action: print("A12"))]]
//

			
							VStack(spacing: 10){
								HStack(spacing:10){
				
									Button(action: {
										withAnimation {
											degreesA1 += 90.0 // rotate button by 90 degrees
										}
									}) {
										Image("A7")
				
				
											.cornerRadius(10)
									}
									.rotationEffect(.degrees(degreesA1))
				
				
				
									Button(action: {
										withAnimation {
											degreesA2 += 90.0 // rotate button by 90 degrees
										}
									}) {
										Image("A8")
				
				
											.cornerRadius(10)
									}
									.rotationEffect(.degrees(degreesA2))
				
									Button(action: {
										withAnimation {
											degreesA3 += 90.0 // rotate button by 90 degrees
										}
									}) {
										Image("A9")
				
				
											.cornerRadius(10)
									}
									.rotationEffect(.degrees(degreesA3))
								}
								HStack(spacing:10){
									Button(action: {
										withAnimation {
											degreesA4 += 90.0 // rotate button by 90 degrees
										}
									}) {
										Image("A10")
				
				
											.cornerRadius(10)
									}
									.rotationEffect(.degrees(degreesA4))
				
									Button(action: {
										withAnimation {
											degreesA5 += 90.0 // rotate button by 90 degrees
										}
									}) {
										Image("A11")
				
				
											.cornerRadius(10)
									}
									.rotationEffect(.degrees(degreesA5))
									Button(action: {
										withAnimation {
											degreesA6 += 90.0 // rotate button by 90 degrees
										}
									}) {
										Image("A4")
				
				
											.cornerRadius(10)
									}
									.rotationEffect(.degrees(degreesA6))
								}
								HStack(spacing:10){
									Button(action: {
										withAnimation {
											degreesA7 += 90.0 // rotate button by 90 degrees
										}
									}) {
										Image("A2")
				
				
											.cornerRadius(10)
									}
									.rotationEffect(.degrees(degreesA7))
									Button(action: {
										withAnimation {
											degreesA8 += 90.0 // rotate button by 90 degrees
										}
									}) {
										Image("A3")
				
				
											.cornerRadius(10)
									}
									.rotationEffect(.degrees(degreesA8))
									Button(action: {
										withAnimation {
											degreesA9 += 90.0 // rotate button by 90 degrees
										}
									}) {
										Image("A4")
				
				
											.cornerRadius(10)
									}
									.rotationEffect(.degrees(degreesA9))
								}
								HStack(spacing:8){
									Button(action: {
										withAnimation {
											degreesA10 += 90.0 // rotate button by 90 degrees
										}
									}) {
										Image("A5")
				
				
											.cornerRadius(10)
									}
									.rotationEffect(.degrees(degreesA10))
									Button(action: {
										withAnimation {
											degreesA11 += 90.0 // rotate button by 90 degrees
										}
									}) {
										Image("A6")
				
				
											.cornerRadius(10)
									}
									.rotationEffect(.degrees(degreesA11))
									Button(action: {
										withAnimation {
											degreesA12 += 90.0 // rotate button by 90 degrees
										}
									}) {
										Image("A7")
				
				
											.cornerRadius(10)
									}
									.rotationEffect(.degrees(degreesA12))
								}
							}
							.padding()
			
			Spacer()
			
			
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
							.background(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.12))
						
						
					}.cornerRadius(25)
					
					Button {
						 
					} label: {
						Text("Play")
							.font(.custom("MarkPro", size: 17))
							.bold()
							.foregroundColor(Color(.black))
							.frame(width: 159, height: 50)
							.background(Color(red: 1, green: 1, blue: 1).opacity(1))
						
						
					}.cornerRadius(25)
					
					
					
				}.padding()
					.padding([.trailing,.leading],24)
					.padding(.bottom,45)
				
					.cornerRadius(25)
			}
			.padding([.top,.bottom], 20)
			
			
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1))
		.edgesIgnoringSafeArea(.all)
		.statusBarHidden()
		
		
	}
	
//	func generateMaze() {
//
//		maze.forEach { row in
//			row.shuffled()
//		}
//	}

}

struct Game10View_Previews: PreviewProvider {
    static var previews: some View {
        Game10View()
			.background(Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1))
			.edgesIgnoringSafeArea(.all)
			.statusBarHidden()
    }
}

struct MazeButton: View {
	var image: String
	@State var angle: Double = 0.0
	var action: () -> String
	
	var body: some View {
		Button(action: {
			withAnimation {
				angle += 90.0
				 
			}
		}) {
			Image(image)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.rotationEffect(.degrees(angle))
				.cornerRadius(10)
		}
	}
}
