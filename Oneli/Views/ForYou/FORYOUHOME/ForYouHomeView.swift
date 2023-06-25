//
//  ForYouHomeView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 2/20/23.
//

import SwiftUI

struct ForYouHomeView: View {

	var MarkProTitle2Font: Font = .custom("MarkPro", size: 34)
	var MarkProRegularFont: Font = .custom("MarkPro-Regular", size: 17)
	var MarkProCaption2Font: Font = .custom("MarkPro-Regular", size: 11)
	var MarkProfootNoteFont: Font = .custom("MarkPro-Regular", size: 13)

 
	@Environment(\.presentationMode) var presentationMode

	
 
	
	//HeadlineMentalAge

	 
	var body: some View {
		NavigationView {
			VStack{

					//				HStack(alignment: .center, content: {
				TabBarView()









				


			}
			.background(Color("Background2"))
			.edgesIgnoringSafeArea(.all)
		}
		//	.background(Color("Background2")).opacity(1)
		//.edgesIgnoringSafeArea(.all)
	//	.frame(maxWidth:.infinity, maxHeight: .infinity)
			.navigationBarHidden(true)
			.navigationBarBackButtonHidden()
		
	}
}

struct ForYouHomeView_Previews: PreviewProvider {
	static var previews: some View {
		ForYouHomeView()

			.frame(maxWidth:.infinity, maxHeight: .infinity)
			.edgesIgnoringSafeArea(.all)
	}
}
 

 

