//
//  TextField.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/6/23.
//

import Foundation
import SwiftUI
import Swift

struct TextFieldClearButton: ViewModifier {
	
	@Binding var fieldText: String
	
	func body(content: Content) -> some View {
		content
			.overlay {
				if !fieldText.isEmpty {
					HStack {
						Spacer()
						Button {
							fieldText = ""
						} label: {
							Image(systemName: "multiply.circle.fill")
						}
						.foregroundColor(.secondary)
						.padding(.trailing, 4)
					}
				}
			}
	}
}

extension View {
	func showClearButton(_ text: Binding<String>) -> some View {
		self.modifier(TextFieldClearButton(fieldText: text))
	}
}

struct TextFieldButton: View {
	
	@State private var text = ""
	@FocusState private var isTextFieldFocused: Bool
	
	var body: some View {
		VStack {
			TextField("", text: $text)
				.textFieldStyle(.roundedBorder)
				.focused($isTextFieldFocused)
				.showClearButton($text)
		}
		.padding()
		.background(Color.purple)
	}
}



struct ClearableTextField: View {
	
	var title: String
	@Binding var text: String
	
	init(_ title: String, text: Binding<String>) {
		self.title = title
		_text = text
	}
	
	var body: some View {
		ZStack(alignment: .trailing) {
			TextField(title, text: $text)
			Image(systemName: "xmark.circle.fill")
				.foregroundColor(.secondary)
				.onTapGesture {
					text = ""
				}
		}
	}
}
