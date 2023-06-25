//
//  Game09View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/17/23.
//

import SwiftUI

struct Game09View: View {
	@Environment(\.presentationMode) var presentationMode
	
	@State private var isVStackShown = false
	@State var isRotating = true
	@State private var isAnimating = false
	@State var height: Double = 30
	@Environment(\.dismiss) private var dismiss
	
	@State private var offset: CGFloat = -140
	@State private var offsetY: CGFloat = -180
	
	@State private var isAnimatingRightToLeft = false
	@State private var isAnimatingLeftToRight = false
	
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
			VStack{
				 
					VStack{
						Button {
							upDown()
						} label: {
							VStack(spacing:0){
								Rectangle()
									.fill(
										LinearGradient(
											gradient: Gradient(colors: [
												Color(.sRGB, red: 43/255, green: 49/255, blue: 61/255, opacity: 0),
												Color(.sRGB, red: 43/255, green: 49/255, blue: 61/255, opacity: 1)
											]),
											startPoint: .top,
											endPoint: .bottom
										)
									)
									.frame(width: 60, height: height)
								
								Rectangle()
									.fill(.black)
									.frame(width: 88,height: 56)
									.cornerRadius(14)
							}
						}
						.offset(y:offsetY)
						.scaleEffect(y: isAnimating ? 1 : 0)
						.animation(.easeInOut(duration: 0.1), value: 0.1)
						
						.onAppear() {
							
							self.isAnimating.toggle()
						}
						
					}
				 

				
			 
	
					HStack{
						Spacer()
						Image("Happy")
							.resizable()
							.scaledToFit()
							.frame(width: 96, height: 96)
						
					}.frame(width: 96, height: 96)
					.padding(.horizontal)
					
						.offset(x: isAnimatingLeftToRight ? 280 : -160,y: 60)
						.offset(x: isAnimatingRightToLeft ? 280 : -160,y: 60)
						
						.offset(x: offset)
					  // set the animation here
					 
						.animation(.easeInOut(duration: 1).delay(0.5).repeatForever(), value: 1)
						.fixedSize(horizontal: true, vertical: false)
						
				
				.onAppear() {
					isAnimatingRightToLeft = true
					isAnimatingLeftToRight = true
				}
			
					
				
				
				
				
			}.frame(width: screenBounds().width, height: 400)
				 
				//footer
			
			
			HStack{
				
				
				
				Button {
					
				} label: {
					Image("Music")
						.font(.custom("MarkPro", size: 17))
						.bold()
						.foregroundColor(Color(.black))
						.frame(width: 50, height: 50)
						.background(
							Color(red: 1, green: 1, blue: 1).opacity(1))
					
					
				}.cornerRadius(100)
				
				Spacer()
				Button {
					
				} label: {
					Image("Pause")
						.font(.custom("MarkPro", size: 17))
						.bold()
						.foregroundColor(Color(.black))
						.frame(width: 50, height: 50)
						.background(
							Color(red: 1, green: 1, blue: 1).opacity(1))
					
					
				}.cornerRadius(100)
				
				
				
			}
			 
			.padding(.bottom,45)
			.padding([.trailing,.leading],24)
			.cornerRadius(25)
			.padding([.top,.bottom], 20)
			.background(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.05))
			 
			
			
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(Color("OrangePastel"))
		.edgesIgnoringSafeArea(.all)
		.statusBarHidden()
    }
	
	func randomInt(min: Int, max: Int) -> Int {
		return min + Int(arc4random_uniform(UInt32(max - min + 1)))
	}
	func upDown(){
		if height == 30 {
			height = 280
		}
		else if  height == 280{
			height = 30
		}
		
		if offsetY == -180 {
			offsetY = 40
		}
		else if offsetY == 40 {
			offsetY = -180
		}
	}
	
}

struct Game09View_Previews: PreviewProvider {
    static var previews: some View {
        Game09View()
			.statusBarHidden()
    }
}
