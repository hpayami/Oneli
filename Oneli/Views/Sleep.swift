//
//  Drag and Drop.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/10/23.
//

import SwiftUI
import Foundation

struct DragAndDropView: View {
	@State private var items = ["Item 1", "Item 2", "Item 3"]
	@State private var draggedItem: String?
	
	var body: some View {
		VStack {
			Text("Drag and Drop Example")
				.font(.title)
			
			HStack {
				ForEach(items, id: \.self) { item in
					Text(item)
						.padding()
						.background(draggedItem == item ? Color.blue : Color.gray)
						.cornerRadius(10)
						.foregroundColor(.white)
						.onDrag {
							self.draggedItem = item
							return NSItemProvider(object: NSString(string: item))
						}
						.onDrop(of: ["public.text"], delegate: DropViewDelegate(item: item, items: $items, draggedItem: $draggedItem))
				}
			}
			.padding()
		}
	}
}

struct DropViewDelegate: DropDelegate {
	let item: String
	@Binding var items: [String]
	@Binding var draggedItem: String?
	
	func performDrop(info: DropInfo) -> Bool {
		let fromIndex = items.firstIndex(of: draggedItem!)!
		let toIndex = items.firstIndex(of: item)!
		items.move(fromOffsets: IndexSet(integer: fromIndex), toOffset: toIndex)
		self.draggedItem = nil
		return true
	}
}

struct MyPreviewProvider_Previews: PreviewProvider {
	static var previews: some View {
		DragAndDropView()
	}
}
