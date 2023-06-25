//
//  Game06View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/16/23.
//
 
import SwiftUI


struct Game06View: View {
	@Environment(\.presentationMode) var presentationMode
	@State  var isBlinking = false
	@State var isPresented: Bool = true
	@Environment(\.dismiss) private var dismiss
	 
	@State  var isPlay: Bool
	@State  var greenCount: Int = 0
	@State  var redCount: Int = 0
	@State  var gameGreen: Int = Int.random(in: 1..<8)
	@State  var gameRed: Int = Int.random(in: 1..<8)
	
	@State  var TempGreen: Int = 0
	@State  var TempRed: Int = 0
	
	@State  var result: Int = 0
	@State var opacity: Int = 0
 
	
	
	let blinkCount: Int
	let blinkDuration: Double =  1.0
	
	@State private var isVisible = false
	@State private var blinkCounter = 0
	
	let blinkOnDuration: Double = 0.5
	let blinkOffDuration: Double = 0.5
	@State var gameOver: Bool = false
	 
 
	
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
						
						
						Text("Think about the other side as well.")
						
							.foregroundColor(.black)
							.font(.custom("MarkPro", size: 28))
							.fixedSize(horizontal: false, vertical: true)
							.padding([.bottom,.leading], 1)
						Spacer()
						
						
						
					}
				}
				.frame(width: .infinity,height: 58).padding(.all).padding()
				.padding(.top,62)
			}.padding(.top,20)
				.padding(.bottom,86)
			
			Spacer(minLength: 50)
			HStack(alignment: .center,spacing: 80){
			 
			 
				
					//red
				
					Button {
						redCount = redCount + 1
						
					} label: {
						Rectangle().fill(Color.red)
							.frame(width: 115,height: 115)
							.cornerRadius(25)
						
						
					}.opacity(isVisible ? 1.0 : 0.0)
					
					.onAppear {
						let blinkOnTime = DispatchTime.now() + blinkOnDuration
						let blinkOffTime = DispatchTime.now() + blinkOnDuration + blinkOffDuration
						
						DispatchQueue.main.asyncAfter(deadline: blinkOnTime) {
							withAnimation {
								isVisible = true
							}
						}
						
						DispatchQueue.main.asyncAfter(deadline: blinkOffTime) {
							withAnimation {
								isVisible = false
							}
						}
					}
					.onDisappear {
						isVisible = true
						blinkCounter = 0
					}
				
			
					//green
		 
					Button {
						greenCount = greenCount + 1
						
					} label: {
						Rectangle().fill(Color.green)
							.frame(width: 115,height: 115)
							.cornerRadius(25)
						
						
					}.opacity(isVisible ? 1.0 : 0.0)
					
					.onAppear {
						Timer.scheduledTimer(withTimeInterval: blinkDuration, repeats: true) { _ in
							isVisible.toggle()
							
							if !isVisible {
								blinkCounter += 1
								
								if blinkCounter >= blinkCount {
									isVisible = true
									blinkCounter = blinkCounter + 1
								}
							}
						}
					}
					.onDisappear {
						isVisible = false
						blinkCounter = blinkCounter + 1
					}
			 
			 
				 
		  
					
				
				
			}.padding([.trailing,.leading],56)
			Text("\(redCount)")
			
			Text("\(greenCount)")
			
			
			Text("\(TempRed)")
			
			Text("\(TempGreen)")
			Spacer(minLength: 50)
			
			
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
						isPlay = true
						startGame()
					} label: {
						if isPlay == false{
							Text("Play")
								.font(.custom("MarkPro", size: 17))
								.bold()
								.foregroundColor(Color(.black))
								.frame(width: 159, height: 50)
								.background(
									Color(red: 1, green: 1, blue: 1).opacity(1))
						}else{
							Text("Replay")
								.font(.custom("MarkPro", size: 17))
								.bold()
								.foregroundColor(Color(.black))
								.frame(width: 159, height: 50)
								.background(
									Color(red: 1, green: 1, blue: 1).opacity(1))
						}
						
					}
					.cornerRadius(25)
					 
					
					
				}
				.padding([.trailing,.leading],24)
				.padding(.bottom,45)
				
				.cornerRadius(25)
			}.padding([.top,.bottom], 20)
			
			
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(Color(red: 0.933, green: 0.949, blue: 0.961).opacity(1))
		.edgesIgnoringSafeArea(.all)
		.statusBarHidden()
		
		
		
	}
	
	func randomInt(min: Int, max: Int) -> Int {
		return min + Int(arc4random_uniform(UInt32(max - min + 1)))
	}
	
	func startGame() {
			// Start a new game
			// Randomly turn on some squares
			// Start the timer to turn off all squares
		redCount = 0
		greenCount = 0
		result = 0
		
		TempRed = 0
		
		TempGreen = 0
		
		gameRed = randomInt(min: 0, max: 4)
		gameGreen = randomInt(min: 0, max: 4)
		TempRed = gameRed
		
		TempGreen = gameGreen
		
		isBlinking = false
		
	}
	
	
	func toggleSquare(row: Int, col: Int) {
			// Toggle the state of the square at row, col
	}
	
	func checkGameOver() {
			// Check if the game is over (all squares are turned off)
			// If so, set gameOver to true
		
	}
	
	func resetGame() {
			// Reset the game state to start a new game
		startGame()
		redCount = 0
		greenCount = 0
		result = 0
		TempRed = 0
		gameRed = 0
		TempGreen = 0
		gameGreen = 0
	}
	
	
}

struct Blink_Previews: PreviewProvider {
	static var previews: some View {
		Game06View(isPlay: true, blinkCount: 4)
	}
}
