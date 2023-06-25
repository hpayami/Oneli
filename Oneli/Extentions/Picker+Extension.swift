//
//  Picker+Extension.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/5/23.
//

import Foundation
import SwiftUI
extension Picker {
	
		/// Creates a picker that displays a custom label.
		///
		/// If the wrapped values of the collection passed to `sources` are not all
		/// the same, some styles render the selection in a mixed state. The
		/// specific presentation depends on the style.  For example, a Picker
		/// with a menu style uses dashes instead of checkmarks to indicate the
		/// selected values.
		///
		/// In the following example, a picker in a document inspector controls the
		/// thickness of borders for the currently-selected shapes, which can be of
		/// any number.
	///
	     enum Thickness: String, CaseIterable, Identifiable {
	         case thin
	         case regular
	         case thick
	
	         var id: String { rawValue }
	     }
	
	     struct Border {
	         var color: Color
	         var thickness: Thickness
	     }
	
	     
	
	struct BackgroundColor {
		var color: Color
		var shadow: NSShadow
	}
	  
	}
