	//
	//  TabBarView.swift
	//  Oneli
	//
	//  Created by PhD Hossein Payami on 2/12/23.
	//

import SwiftUI


enum Tab: String {

	case forYou = "ForYouView"
	case chatBot = "OneliChatView"
	case community = "CommunityView"


	var image: String {
		switch self {
			case .forYou: return "ForYou"
			case .chatBot: return "ChatBot"
			case .community: return "Community"

		}
	}
}

struct TabBarView: View {

	@State var selected: Tab = .forYou


	var body: some View {
		VStack {



					switch selected {
						case .forYou:
							ForYouView()
						case .chatBot:
							OneliChatView()
						case .community:
							CommunityView()

					}






						HStack {

							TabBarItemView(selected: $selected, tab: .forYou,  width: 40, height: 40)

							TabBarItemView(selected: $selected, tab: .chatBot,  width: 40, height: 40)



							TabBarItemView(selected: $selected, tab: .community, width: 40, height: 40)


						}
						.background(Color("Background1"))
						.edgesIgnoringSafeArea(.all)
						.cornerRadius(25)
						



}

	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		TabBarView().edgesIgnoringSafeArea(.all)
	}
}
struct TabBarItemView: View {

	@Binding var selected: Tab
	let tab: Tab

	let width, height: CGFloat

	var body: some View {
		HStack {
			Image(tab.image)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 40, height: 40)
				.padding(.top, 10)

		}.padding()
		.padding(.horizontal)
		.onTapGesture {
			selected = tab
		}
		.foregroundColor(selected == tab ? .accentColor : .gray)
	}
}

struct TabBarIcon_Previews: PreviewProvider {
	static var previews: some View {
		TabBarItemView(selected: .constant(.forYou), tab: .forYou, width: 80, height: 80)
	}
}

