//
//  CommunityView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 2/19/23.
//

import SwiftUI

struct CommunityView: View {
	var MarkProTitle2Font: Font = .custom("MarkPro", size: 22)
	var MarkProRegularFont: Font = .custom("MarkPro-Regular", size: 17)
	var MarkProCaption2Font: Font = .custom("MarkPro-Regular", size: 11)
	var MarkProfootNoteFont: Font = .custom("MarkPro-Regular", size: 13)
	@Environment(\.presentationMode) var presentationMode

	var body: some View {
		VStack {
			HStack {
				Spacer()
				NavigationLink {
					ProfileView()
				} label: {
					Image("Profile")
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: 40.0, height: 40.0)
						.background(Color(.white))
						.cornerRadius(10)
				}
			}.padding([.trailing], 30)
				.padding(30)
			VStack {
				VStack {
					Image("CommunityImage")
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: screenBounds().width, height: screenBounds().width - 100)
				}
				.padding([.leading, .trailing], 23)
				VStack {
					HStack {
						Text("Your community")
							.font(MarkProTitle2Font)
					}
					HStack {
						Text("Keep track of your favorite activities.\nThroughout the journey, I'll guide you.")
							.font(.body)
							.fontWeight(.regular)
							.multilineTextAlignment(.leading)
							.foregroundColor(Color(red: 0.263, green: 0.282, blue: 0.337).opacity(0.54))
					}.padding([.leading, .trailing], 24)
				}.padding(.trailing, 24)

				Image("Seperator")
				VStack {
					HStack {
						VStack(spacing: 2) {
							Text("ALL USERS")
								.font(MarkProCaption2Font)
								.foregroundColor(Color(red: 0.263, green: 0.282, blue: 0.337).opacity(0.54))
								.font(.caption2)
							Text("12,675")
								.font(MarkProfootNoteFont)
								.foregroundColor(Color("Primary"))

						}.padding()
						Image("Seperator1")
							.padding()
						VStack(spacing: 2) {
							Text("PEOPLE LIKE YOU")
								.font(MarkProCaption2Font)
								.foregroundColor(Color(red: 0.263, green: 0.282, blue: 0.337).opacity(0.54))
								.font(.caption2)
							Text("148")
								.font(MarkProfootNoteFont)
								.foregroundColor(Color("Primary"))
						}
					}
				}
				Image("Seperator")
			}

			// Footer
			HStack {
				Button {} label: {
					Text("Subscribe")
						.foregroundColor(.primary)

				}.frame(width: 342, height: 50)
					.background(Color("Background1"))
					.cornerRadius(25)
			}.padding()
			Spacer()
		}.frame(maxWidth: .infinity, maxHeight: .infinity)

			.background(
				Color("Background2")).opacity(1)
			.edgesIgnoringSafeArea(.all)
			.statusBarHidden()
			.navigationBarBackButtonHidden()
			.navigationBarHidden(true)
	}
}

struct CommunityView_Previews: PreviewProvider {
	static var previews: some View {
		CommunityView().navigationBarHidden(true)

			.navigationBarBackButtonHidden(true)
			.edgesIgnoringSafeArea(.all)
			.statusBarHidden()
	}
}
