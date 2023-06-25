//
//  OneliAnimationBreathing.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/16/23.
//

 
import SwiftUI

struct OneliAnimationBreathing: View {
	@State var isRotating = true
	@State var scaleEffect: Double = 1
	
	@State private var scale = 0.25
	 
	@State private var isBreathing = false
	
	@State private var breatheIn = true
	@State private var breatheOut = false
	@Environment(\.presentationMode) var presentationMode
	 
	@Environment(\.dismiss) private var dismiss
	var body: some View {
		VStack {
			
			 
			
			Spacer(minLength: 20)
			VStack{
				Text("Breathe Out")
					.opacity(breatheOut ? 0.2 : 1) // Opacity animation
					.animation(.easeInOut(duration: 7).delay(0.75).repeatForever(autoreverses: true), value: breatheOut)
					.onAppear{
						breatheOut.toggle()
						scale = 0.4
					}
				
			 
				if isBreathing {
					ZStack {
						
						Image("shape1")
							.rotationEffect(.degrees(isRotating ? 0 : 360))
						
						Image("shape4")
							.rotationEffect(.degrees(isRotating ? 0 : 360))
						
						Image("shape3")
							.rotationEffect(.degrees(isRotating ? 0 : 360))
						
						Image("shape2")
							.rotationEffect(.degrees(isRotating ? 0 : 360))
						
						
						Image("shape1")
							.rotationEffect(.degrees(isRotating ? 0 : 360))
							//.hueRotation(.degrees(isRotating ? 0 : 230))
							.frame(width: 150, height: 150)
							.padding()
							.onAppear {
								withAnimation(.easeIn(duration: 6)
									.repeatForever(autoreverses: false)) {
										isRotating.toggle()
									}
							}
					}
					.scaleEffect(scale)
					
						.animation(.easeInOut(duration: 4).repeatForever(autoreverses: false), value: 4)
						.onAppear {
							self.isBreathing = true
							scale = 0.5
						}
					
				}else {
					ZStack {
						
						Image("shape1")
							.rotationEffect(.degrees(isRotating ? 0 : 360))
						
						Image("shape4")
							.rotationEffect(.degrees(isRotating ? 0 : 360))
						
						Image("shape3")
							.rotationEffect(.degrees(isRotating ? 0 : 360))
						
						Image("shape2")
							.rotationEffect(.degrees(isRotating ? 0 : 360))
						
						
						Image("shape1")
							.rotationEffect(.degrees(isRotating ? 0 : 360))
							//.hueRotation(.degrees(isRotating ? 0 : 230))
							.frame(width: 150, height: 150)
							.padding()
							.onAppear {
								withAnimation(.easeIn(duration: 6)
									.repeatForever(autoreverses: false)) {
										isRotating.toggle()
									}
							}
					}
					.scaleEffect(scale)
				 	.animation(.easeInOut(duration: 9).delay(0.5).repeatForever(autoreverses: true), value: 1)
					.onAppear {
						self.isBreathing = false
						scale = 1
					}
				}
 
 							 
					}
			Spacer(minLength: 20)
			VStack{
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
			
		
	
}

struct OneliAnimationBreathing_Previews: PreviewProvider {
	static var previews: some View {
		OneliAnimationBreathing()
			.preferredColorScheme(.light)
			.statusBarHidden()
	}
}

 

