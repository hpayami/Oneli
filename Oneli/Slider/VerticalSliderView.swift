//
//  VerticalSliderView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/10/23.
//

import SwiftUI

struct VerticalSliderView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct VerticalSliderView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalSliderView()
    }
}
 

public struct SliderBoundsPreferenceKey: View {
	
	@State private var willDisplayIndex: Int = 0
	
	public init() {}
	public var body: some View {
		VStack {
			Text("willDisplayIndex : \(willDisplayIndex)")
			Spacer().frame(height: 40)
			List(0...200, id: \.self) { index in
				HStack {
					Spacer()
					Text("\(index)")
						.padding()
					Spacer()
				}
				.background(index%2 == 0 ? Color.gray.opacity(0.5) : Color.gray)
				.listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
				.preference(key: IndexKey.self, value: index)
				.anchorPreference(key: BoundsPreferenceKey.self, value: .bounds) { $0 }
			}
			.listStyle(PlainListStyle())
			.padding()
			.onPreferenceChange(IndexKey.self) { index in
				willDisplayIndex = index
			}
			.overlayPreferenceValue(BoundsPreferenceKey.self) { prefers in
				GeometryReader { proxy in
					prefers.map {
						Rectangle()
							.stroke(Color("Primary"), lineWidth: 2)
							.background(Color("Primary").opacity(0.3))
							.frame(width: proxy[$0].width, height: proxy[$0].height)
							.offset(x: proxy[$0].minX, y: proxy[$0].minY)
					}
				}
			}
		}
		.padding()
		.frame(maxWidth: 500)
	}
}

fileprivate
struct BoundsPreferenceKey: PreferenceKey {
	typealias Value = Anchor<CGRect>?
	static var defaultValue: Value = nil
	static func reduce(value: inout Value,  nextValue: () -> Value) {
		value = nextValue()
	}
}

fileprivate
struct IndexKey: PreferenceKey {
	static var defaultValue: Int = 0
	static func reduce(value: inout Int, nextValue: () -> Int) {
		value = nextValue()
	}
}

struct SliderBoundsPreferenceKey_Previews: PreviewProvider {
	static var previews: some View {
		SliderBoundsPreferenceKey()
	}
}
