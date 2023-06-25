//
//  EmptyState.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/16/23.
//

import SwiftUI

struct EmptyState: View {
    
     
		@State var isRotating = true
		@State var scaleEffect: Double = 0.8
		
		var body: some View {
			ZStack {
				
				ZStack {
					
					Image("Shape--2")
						.rotationEffect(.degrees(isRotating ? 0 : 360))
						//.hueRotation(.degrees(isRotating ? -220 : 300))
						//.rotation3DEffect(.degrees(75), axis: (x: isRotating ? 1 : 5, y: 0, z: 0))
					Image("Shape--1")
						.rotationEffect(.degrees(isRotating ? 0 : 360))
						//.hueRotation(.degrees(isRotating ? -150 : 0))
						//.rotation3DEffect(.degrees(75), axis: (x: isRotating ? 1 : 5, y: 0, z: 0))
					Image("Shape--2")
						.rotationEffect(.degrees(isRotating ? 360 : 0))
						//.hueRotation(.degrees(isRotating ? 720 : -50))
					Image("Shape--1")
						.rotationEffect(.degrees(isRotating ? 360 : 0))
						//.blur(radius: 18)
					
						//.hueRotation(.degrees(isRotating ? 0 : 360))
						//.rotation3DEffect(.degrees(15), axis: (x: 1, y: 1, z: 1), perspective: isRotating ? 5 : 0)
				}
					//.blendMode(isRotating ? .lighten : .difference)
				 Image("Shape--1")
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
			}.scaleEffect(scaleEffect)
			
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
		EmptyState(isRotating: true , scaleEffect: 0.8)
			.statusBarHidden()
    }
}
