	//
	//  SiriView.swift
	//  Oneli
	//
	//  Created by PhD Hossein Payami on 2/25/23.
	//

import SwiftUI
import Speech
import NaturalLanguage

struct SiriView: View {
 
	@State private var isRecording = false
	@State private var transcribedText = ""
	@State private var siriResponse = ""
		 
	
	 
	  
	var body: some View {
		VStack {
			Image(systemName: "mic.fill")
				.font(.system(size: 60))
				.foregroundColor(isRecording ? .red : .gray)
				.padding(.bottom, 50)
				.rotationEffect(.degrees(isRecording ? 0 : -60))
				.animation(.spring(response:0.30,dampingFraction: 0.5,blendDuration: 0.7), value: 1)
				.onTapGesture {
					isRecording.toggle()
				}

			
			Text(transcribedText)
				.opacity(isRecording ? 0 : 1)
				.animation(.easeInOut(duration: 0.3), value: 0)
			Text(siriResponse)
				.opacity(isRecording ? 1 : 0)
				.offset(y: isRecording ? 0 : 100)
				.animation(.easeInOut(duration: 0.3), value: 0.5)

		}
		
	}

	}


struct SiriView_Previews: PreviewProvider {
	static var previews: some View {
		SiriView().edgesIgnoringSafeArea(.all)
			.navigationBarHidden(true)
			.navigationBarTitleDisplayMode(.automatic)
			.navigationBarBackButtonHidden(true)
		
	}
}
