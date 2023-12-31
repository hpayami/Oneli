//	//
//	//  RangeSlider.swift
//	//  Oneli
//	//
//	//  Created by PhD Hossein Payami on 3/28/23.
//	//
//
//
import SwiftUI

	/// A control for selecting two values from a bounded linear range of values.
	///
	/// A slider consists of two “thumb” image that the user moves between two extremes of a linear “track”.
	/// The ends of the track represent the minimum and maximum possible values. As the user moves a thumb,
	/// the slider updates its bound value. The following example shows a slider bound to the values lowValue and highValue.
	/// As the slider updates this value, a bound Text view shows the value updating.
	/// The onEditingChanged closure passed to the slider receives callbacks when the user drags the slider.
	/// The example uses this to change the color and boolean in the Text view.
	///
	///  ```
	/// @State private var lowValue = 0.0
	/// @State private var highValue = 10.0
	/// @State private var onEditing = false
	///
	/// var body: some View {
	///    VStack {
	///        RangeSlider(
	///            lowValue: $lowValue,
	///            highValue: $highValue,
	///            in: 0...10,
	///            showDifferenceOnEditing: true) {
	///                onEditing = $0
	///            }
	///         Text(String(onEditing))
	///            .foregroundColor(onEditing ? .red : .green)
	///    }
	/// }
	///  ```
	///
	///  You can also use a step parameter to provide incremental steps along the path of the slider. For example,
	///  if you have a slider with a range of 0 to 100, and you set the step value to 5, the slider’s increments would be 0, 5, 10, and so on.
public struct RangeSlider<V: BinaryFloatingPoint>: View {
		// MARK: - Properties
	
		/// The value of thumb on the left-hand-side.
	@Binding var lowValue: V
	
		/// The value of thumb on the right-hand-side.
	@Binding var highValue: V
	
		/// The zIndex for the thumb on the right-hand-side.
	@State private var zIndexRHS: Double = 0
	
		/// The x-coordinate at the start of a drag gesture.
	@State private var startX: CGFloat? = nil
	
		/// The title of the slider that is currently being displayed.
	@State private var displayTitle: String
	
		/// An optional title for the slider.
	let title: String?
	
		/// The range of the valid values.
	let bounds: ClosedRange<Double>
	
		/// An optional display range.
	let displayBounds: ClosedRange<Double>?
	
		/// The lower-bound for the slider.
	let minimumValue: V
	
		/// The upper-bound for the slider.
	let maximumValue: V
	
		/// The distance between the upper and lower bounds.
	let totalDistance: V
	
		/// The distance between each value. Defaults to zero.
	let step: V?
	
		/// Whether or not to display the low and high slider values.
	let showValues: Bool
	
		/// Whether or not to show the difference between the high and low values when editing.
	let showDifferenceOnEditing: Bool
	
		/// The main color of the slider.
	let color: Color
	
		/// The title font.
	let font: Font
	
		/// The width of the sliders track.
	let lineWidth: CGFloat
	
		/// A callback for when editing begins and ends.
	let onEditingChanged: (Bool) -> Void
	
	public var body: some View {
		VStack {
			if title != nil {
				ZStack {
						// This prevents the displayTitle height from
						// changing in the case that title is nil and
						// showDifferenceOnEditing is true.
					Text("hidden")
						.fontWeight(.semibold)
						.font(font)
						.padding(.bottom, -3)
						.hidden()
					
					Text(displayTitle)
						.fontWeight(.semibold)
						.font(font)
						.foregroundColor(.secondary)
						.padding(.bottom, -3)
						.transition(.opacity)
					
						// We change the id parameter of the view when
						// we change its title. This resets the views
						// state, allowing us to animate this change.
						.id("RangeSlider" + displayTitle)
					
				}
			}
			GeometryReader { geo in
				ZStack {
					HStack(spacing: 0) {
							// Track to the left of the LHS thumb.
						Track(lineWidth: lineWidth)
							.foregroundColor(Color.secondary)
							.opacity(0.3)
							.frame(width: xPosition(side: .lhs, geo))
						
							// Track in-between the two thumbs.
						Track(lineWidth: lineWidth)
							.foregroundColor(color)
						
							// Track to the right of the RHS thumb.
						Track(lineWidth: lineWidth)
							.foregroundColor(Color.secondary)
							.opacity(0.3)
							.frame(width: geo.size.width - xPosition(side: .rhs, geo))
					}
					.padding(.horizontal, -4.5)
					
					Thumb(side: .lhs, lineWidth: lineWidth) // lowValue
						.position(CGPoint(
							x: xPosition(side: .lhs, geo),
							y: geo.size.height * 0.5))
						.zIndex(1)
						.gesture(dragGesture(side: .lhs, geo: geo))
					
					Thumb(side: .rhs, lineWidth: lineWidth) // highValue
						.position(CGPoint(
							x: xPosition(side: .rhs, geo),
							y: geo.size.height * 0.5))
						.zIndex(zIndexRHS)
						.gesture(dragGesture(side: .rhs, geo: geo))
				}
			}
			.frame(height: 44)
			.padding(.horizontal, 5.5)
			
			HStack {
				if showValues {
					Text(String(format: "%.2f", translate(scale(lowValue))))
						.font(.subheadline)
						.fontWeight(.semibold)
						.foregroundColor(.secondary)
					
					Spacer()
					
					Text(String(format: "%.2f", translate(scale(highValue))))
						.font(.subheadline)
						.fontWeight(.semibold)
						.foregroundColor(.secondary)
						.padding(.top, -3)
				}
			}
		}
	}
	
		// MARK: - Methods
		/// Creates a slider to select two values from a given range.
		///
		/// The values of the created instance are equal to the position of the given values within bounds, mapped into 0...1.
		/// The slider calls onEditingChanged when editing begins and ends. For example, on iOS, editing begins when the user starts to drag a thumb along the slider’s track
		///
		/// - Parameter lowValue: The value of thumb on the left-hand-side.
		/// - Parameter highValue: The value of thumb on the right-hand-side.
		/// - Parameter bounds: The range of the valid values. Defaults to 0...1.
		/// - Parameter step: The distance between each valid value.
		/// - Parameter onEditingChanged: A callback for when editing begins and ends.
	public init(
		_ title: String? = nil,
		lowValue: Binding<V>,
		highValue: Binding<V>,
		in bounds: ClosedRange<Double>,
		displayBounds: ClosedRange<Double>? = nil,
		step: V? = nil,
		showValues: Bool = true,
		showDifferenceOnEditing: Bool = false,
		color: Color = .blue,
		font: Font = .body,
		lineWidth: CGFloat = 7,
		onEditingChanged: @escaping (Bool) -> Void) {
			_lowValue = lowValue
			_highValue = highValue
			minimumValue = V(bounds.lowerBound)
			maximumValue = V(bounds.upperBound)
			totalDistance = maximumValue - minimumValue
			_displayTitle = State(initialValue: title ?? "")
			self.title = showDifferenceOnEditing && title == nil ? "" : title
			self.bounds = bounds
			self.displayBounds = displayBounds
			self.step = step
			self.showValues = showValues
			self.showDifferenceOnEditing = showDifferenceOnEditing
			self.color = color
			self.font = font
			self.lineWidth = lineWidth
			self.onEditingChanged = onEditingChanged
		}
	
	private func scale(_ value: V, translate: Bool = false) -> V {
		guard let display = displayBounds else { return value }
		
		let normal = value / (maximumValue - minimumValue)
		
		return normal * V((display.upperBound - display.lowerBound))
	}
	
	private func translate(_ value: V) -> Double {
		guard let display = displayBounds else { return Double(value) }
		
		return Double(value) + display.lowerBound - bounds.lowerBound
	}
	
	private func dragGesture(side: Thumb.Side, geo: GeometryProxy) -> some Gesture {
		DragGesture(minimumDistance: 0)
			.onChanged { gesture in
				let translationX = gesture.translation.width
				
				if let newValue = getNewValue(for: side, translationX, geo) {
					if side == .lhs {
						lowValue = newValue
						zIndexRHS = 0
					} else {
						highValue = newValue
						zIndexRHS = 1
					}
				}
				
				if showDifferenceOnEditing {
					displayTitle = String(format: "%0.2f", Double(scale(highValue - lowValue)))
				}
			}
			.onEnded { _ in
				onEditingChanged(false)
				startX = nil
				
				if side == .lhs {
					zIndexRHS = 0
				} else {
					zIndexRHS = 1
				}
				
				if showDifferenceOnEditing && title != nil {
					withAnimation(.easeInOut(duration: 0.5).delay(0.25)) {
						displayTitle = title!
					}
				}
			}
	}
	
	private func getNewValue(for side: Thumb.Side, _ translationX: CGFloat, _ geo: GeometryProxy) -> V? {
		if startX == nil {
			startX = xPosition(side: side, geo)
			onEditingChanged(true)
		}
		
		guard let startX = startX else { return nil }
		
		var newValue: V {
			var value = V((startX + translationX) / geo.size.width) * totalDistance
			
			if let step = step {
				value = value - value.remainder(dividingBy: step)
			}
			
			return side == .lhs
			? min(value, highValue)
			: max(lowValue, value)
		}
		
		return newValue.clamped(to: minimumValue...maximumValue)
	}
	
	private func xPosition(side: Thumb.Side, _ geo: GeometryProxy) -> CGFloat {
		let value = side == .lhs ? lowValue : highValue
		return geo.size.width * CGFloat((value) / totalDistance)
	}
}

	// MARK: - Components
private struct Thumb: View {
	enum Side {
		case lhs
		case rhs
	}
	
	let side: Side
	
	let lineWidth: CGFloat
	
	let height: CGFloat = 24
	
	var padding: CGFloat { height - lineWidth }
	
		// We use a background with a frame set to the
		// desired hit target for the thumbs. This is
		// chosen over using contentShape as it allows
		// us to use zIndexing to prevent the thumbs
		// getting stuck when both are at minimum or
		// maximum values.
	let background: some View = Rectangle()
		.foregroundColor(.clear)
		.frame(width: 44, height: 44)
	
	var body: some View {
		RoundedRectangle(cornerRadius: 3)
			.foregroundColor(.white)
			.shadow(radius: 2)
			.frame(width: 11, height: height)
			.padding(.top, side == .lhs ? padding : -padding)
			.background(background)
	}
}

private struct Track: View {
	let lineWidth: CGFloat
	
	var body: some View {
		RoundedRectangle(cornerRadius: 4)
			.frame(height: lineWidth)
	}
}
