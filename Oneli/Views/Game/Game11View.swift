//
//  Game11View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/17/23.
//
 

 import SwiftUI

struct MazeView: View {
		// Create a 2D array to represent the maze
	@State var maze = Array(repeating: Array(repeating: true, count: 4), count: 3)
	
	var body: some View {
		VStack {
			ForEach(0..<3) { row in
				HStack {
					ForEach(0..<4) { column in
						Button(action: {
								// Update the state of the maze when the button is tapped
							maze[row][column].toggle()
						}) {
								// Use the state of the button to determine its appearance
							RoundedRectangle(cornerRadius: 10)
								.fill(maze[row][column] ? Color.black : Color.white)
								.frame(width: 50, height: 50)
						}
					}
				}
			}
		}
	}
}
