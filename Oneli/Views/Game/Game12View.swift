////
////  Game12View.swift
////  Oneli
////
////  Created by PhD Hossein Payami on 5/2/23.
////
//
//import SwiftUI
//
//
//struct ButtonBlinkingView: View {
//	@Binding var isButtonBlinking: Bool
//
//	var body: some View {
//		Circle()
//			.frame(width: 100, height: 100)
//			.foregroundColor(isButtonBlinking ? .red : .gray)
//			.opacity(isButtonBlinking ? 0.5 : 1)
//			.animation(Animation.easeInOut(duration: 0.5).repeatForever())
//	}
//}
//
//struct ButtonView: View {
//	@Binding var score: Int
//	@Binding var isButtonBlinking: Bool
//
//	var body: some View {
//		Button(action: {
//			if isButtonBlinking {
//				score += 1
//				isButtonBlinking = false
//			}
//		}) {
//			Text("Tap Me!")
//				.font(.title)
//				.fontWeight(.bold)
//				.foregroundColor(.white)
//		}
//		.frame(width: 100, height: 100)
//		.background(isButtonBlinking ? Color.green : Color.blue)
//		.cornerRadius(50)
//		.animation(.easeInOut(duration: 0.3))
//	}
//}
//
//struct Game12View: View {
//	@State  var score = 0
//	@State  var isButtonBlinking = false
//	@State  var timeInterval = Double.random(in: 0.5...3)
//	@State  var gameLevel: Int = 1
//	@State  var isGameOver = false
//
//	var body: some View {
//		VStack {
//			Text("Score: \(score)")
//				.font(.title)
//				.fontWeight(.bold)
//				.padding()
//			if !isGameOver {
//				ButtonBlinkingView(isButtonBlinking: $isButtonBlinking)
//				ButtonView(score: $score, isButtonBlinking: $isButtonBlinking)
//
//				if score >= getScoreThresholdForGameLevel(gameLevel) {
//
//					gameLevel = gameLevel + 1
//					timeInterval = Double.random(in: getTimeIntervalRangeForGameLevel(gameLevel))
//					isButtonBlinking = false
//					startGameTimer()
//					let _ = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false, block: { _ in
//						score = 0
//					})
//					Alert.show(title: "Congratulations!", message: "You have reached Level \(gameLevel).", buttonText: "Continue", buttonAction: {})
//				}
//			} else {
//				VStack {
//					Text("Game Over!")
//						.font(.largeTitle)
//						.fontWeight(.bold)
//						.padding()
//					Text("Your Score: \(score)")
//						.font(.title)
//						.padding()
//					Button("Reset Game") {
//						resetGame()
//					}
//					.padding()
//					Button("Replay Game") {
//						replayGame()
//					}
//					.padding()
//				}
//			}
//		}
//		.onAppear {
//			startGameTimer()
//		}
//	}
//
//	func getScoreThresholdForGameLevel(_ level: Int) -> Int {
//		switch level {
//			case 1:
//				return 10
//			case 2:
//				return 20
//			case 3:
//				return 30
//			default:
//				return 10
//		}
//	}
//
//	func getTimeIntervalRangeForGameLevel(_ level: Int) -> ClosedRange<Double> {
//		switch level {
//			case 1:
//				return 1...3
//			case 2:
//				return 3...5
//			case 3:
//				return 5...7
//			default:
//				return 5...7
//		}
//	}
//
//	func startGameTimer() {
//		DispatchQueue.main.asyncAfter(deadline: .now() + Double(gameLevel * 10)) {
//			isGameOver = true
//		}
//		DispatchQueue.main.asyncAfter(deadline: .now() + timeInterval) {
//			isButtonBlinking = true
//		}
//	}
//
//	func resetGame() {
//		score = 0
//		timeInterval = Double.random(in: 0.5...3)
//		isButtonBlinking = false
//		gameLevel = 1
//		isGameOver = false
//		startGameTimer()
//	}
//
//	func replayGame() {
//		score = 0
//		timeInterval = Double.random(in: 0.5...3)
//		isButtonBlinking = false
//		isGameOver = false
//		startGameTimer()
//	}
//}
//struct SwiftUIAlert {
//	static func show(title: String, message: String, buttonText: String, buttonAction: @escaping () -> ()) -> Alert {
//		let primaryButton = Alert.Button.default(Text(buttonText), action: buttonAction)
//		return Alert(title: Text(title), message: Text(message), dismissButton: primaryButton)
//	}
//}
//	struct Game12View_Previews: PreviewProvider {
//		static var previews: some View {
//			Game12View()
//		}
//	}
//
