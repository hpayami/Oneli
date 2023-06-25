//
//  YouSleptView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 2/21/23.
//

import SwiftUI

struct YouSleptView: View {
	@Environment(\.presentationMode) var presentationMode
	@State var pickerSelectedItem = 0
	@State var dataPoints: [[CGFloat]] = [[20, 40, 150, 200, 130, 80, 25], [150, 120, 150, 200, 122, 200, 21], [30, 120, 1, 20, 130, 15, 25]]

	@State private var selection = "Weekly"
	let daysPicker = ["Weekly", "Monthly", "Today"]

	var MarkProTitle2Font: Font = .custom("MarkPro", size: 34)
	var MarkProRegularFont: Font = .custom("MarkPro-Regular", size: 17)
	var MarkProCaption2Font: Font = .custom("MarkPro-Regular", size: 11)
	var MarkProfootNoteFont: Font = .custom("MarkPro-Regular", size: 13)

	var title1: String = "YOU SLEPT"
	var title2: String = "7"
	var title201: String = "23"
	var title3: String = "Description"
	var title4: String = ""
	var title5: String = ""

	// image
	var title6: String = "Awake"
	var title7: String = "AWAKE"
	var title8: String = "3h,"
	var title9: String = "23m"

	// image
	var title10: String = "Light"
	var title11: String = "LIGHT"
	var title12: String = "1h,"
	var title13: String = "45h"

	// image
	var title14: String = "Sleep"
	var title15: String = "DEEP"
	var title16: String = "5h,"
	var title17: String = "18m"

	var title18: String = "AVERAGE"
	var title19: String = "7h 23m"
	var title20: String = "2023,Apr 23"
	var title21: String = "GrayPastel"

	var title22: String = "BEDTIME"
	var title23: String = "10:25"
	var title24: String = "pm"

	var title25: String = "WAKE UP"
	var title26: String = "7:45"
	var title27: String = "am"
	var title28: String = "Change"

	var body: some View {
		VStack {
			Spacer()
			VStack(alignment: .trailing, content: {
				HStack {
					HStack {
						Spacer()
						Button {
							presentationMode.wrappedValue.dismiss()
						} label: {
							Text("X")
								.frame(width: 30, height: 30)
								.background(Color("Secondary"))
								.cornerRadius(25)
						}

					}.padding(20.0)

					Spacer()
				}
			})
			//	.padding(.top,20)
			VStack {
				HStack {
					Text("\(title1)")
						.font(.custom("MarkPro", size: 15))
						.foregroundColor(Color("Secondary"))
					Spacer()
				}.padding(.leading, 24)
				HStack {
					Text("\(title2)")
						.font(.custom("MarkPro", size: 34))
						.bold()
						.foregroundColor(Color("Primary"))
					Text("h")
						.font(.custom("MarkPro", size: 28))
						.bold()
						.foregroundColor(Color("Primary"))
					Text("\(title201)")
						.font(.custom("MarkPro", size: 34))
						.bold()
						.foregroundColor(Color("Primary"))
					Text("m")
						.font(.custom("MarkPro", size: 28))
						.bold()
						.foregroundColor(Color("Primary"))

					Spacer()
				}.padding(.leading, 24)
				HStack {
					Text("\(title3)")
						.font(.custom("MarkPro", size: 15))

						.foregroundColor(Color("Primary"))
					Text("\(title4)\(title5)")
						.font(.custom("MarkPro", size: 15))

						.foregroundColor(Color("Primary"))
					Spacer()
				}.padding(.leading, 24)
			}

			ScrollView(.vertical, showsIndicators: false) {
				// Header

				// Main Container
				VStack {
					// Third Container
					HStack {
						// YouSlep View
						VStack {
							CircleCustomeView(nameImage: "\(title6)")

							Text("\(title7)")
								.foregroundColor(Color("Secondary"))
								.font(.custom("MarkPro", size: 11))
								.padding(.top, 8)
							HStack {
								Text("\(title8) \(title9)")
									.foregroundColor(Color("Primary"))
									.font(.custom("MarkPro", size: 15))
									.bold()
							}.padding(.top, 0)
						}.padding([.leading, .trailing, .bottom], 10)

						VStack {
							CircleCustomeView(nameImage: "\(title10)")
							Text("\(title11)")
								.foregroundColor(Color("Secondary"))
								.font(.custom("MarkPro", size: 11))
								.padding(.top, 8)
							HStack {
								Text("\(title12) \(title13)")
									.foregroundColor(Color("Primary"))
									.font(.custom("MarkPro", size: 15))
									.bold()

							}.padding(.top, 0)
						}.padding([.leading, .trailing, .bottom], 10)

						VStack {
							CircleCustomeView(nameImage: "\(title14)")
							Text("\(title15)")
								.foregroundColor(Color("Secondary"))
								.font(.custom("MarkPro", size: 11))
								.padding(.top, 8)
							HStack {
								Text("\(title16) \(title17)")
									.foregroundColor(Color("Primary"))
									.font(.custom("MarkPro", size: 15))
									.bold()
							}.padding(.top, 0)
						}.padding([.leading, .trailing, .bottom], 10)
					}

				}.padding(.top, 40)
				VStack {
					Image("Seperator")
				}
				VStack {
					HStack {
						VStack {
							HStack {
								Text("\(title18)")
									.font(.custom("MarkPro", size: 11))
									.foregroundColor(Color("Secondary"))
								Spacer()
							}.padding(.leading, 24)

							HStack {
								Text("\(title19)")
									.font(.custom("MarkPro", size: 15))

									.foregroundColor(Color("Primary"))

								Spacer()
							}.padding(.leading, 24)

							HStack {
								Text("\(title20)")
									.font(.custom("MarkPro", size: 11))

									.foregroundColor(Color("Secondary"))
								Spacer()
							}.padding(.leading, 24)
						}
						VStack {
							HStack {
								//								Picker(selection: $pickerSelectedItem, label: Text("xxx")) {
								//									Text("Today").tag(0)
								//									Text("Weekly").tag(1)
								//									Text("Monthly").tag(2)
								//								}.pickerStyle(.menu)
								//									.foregroundColor(.black)
								//									.background(Color(red:0.169, green: 0.192, blue:0.239).opacity(0.05), in: RoundedRectangle(cornerRadius: 32, style: .circular))

								Menu {
									Button {
										pickerSelectedItem = 0
									} label: {
										Text("Today")
											.font(.custom("MarkPro", size: 15))
											.bold()
									}

									Button {
										pickerSelectedItem = 1
									} label: {
										Text("Weekly")
											.font(.custom("MarkPro", size: 15))
											.bold()
									}
									Button {
										pickerSelectedItem = 2
									} label: {
										Text("Monthly")
											.font(.custom("MarkPro", size: 15))
											.bold()
									}
								}
							label: {
									switch pickerSelectedItem {
										case 0:
											Text("Today")
												.font(.custom("MarkPro", size: 15))
												.bold()
											Image(systemName: "chevron.down")
										case 1:
											Text("Weekly")
												.font(.custom("MarkPro", size: 15))
												.bold()
											Image(systemName: "chevron.down")
										case 2:
											Text("Monthly")
												.font(.custom("MarkPro", size: 15))
												.bold()
											Image(systemName: "chevron.down")
										default:
											Text("Today")
												.font(.custom("MarkPro", size: 15))
												.bold()
											Image(systemName: "chevron.down")
									}
								}

								.frame(width: 95, height: 40)
								.cornerRadius(20)
								.padding(.horizontal, 24)

								.foregroundColor(.black)
								.background(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.05), in: RoundedRectangle(cornerRadius: 32, style: .circular))
							}

							.cornerRadius(20)
							.padding()
						}
					}
				}
				//	Chart
				VStack { // Rings start
					HStack {
						Barview(value: dataPoints[pickerSelectedItem][0], text: "Sun")
						Barview(value: dataPoints[pickerSelectedItem][1], text: "Mon")
						Barview(value: dataPoints[pickerSelectedItem][2], text: "Tue")
						Barview(value: dataPoints[pickerSelectedItem][3], text: "Wed")
						Barview(value: dataPoints[pickerSelectedItem][4], text: "Thu")
						Barview(value: dataPoints[pickerSelectedItem][5], text: "Fri")
						Barview(value: dataPoints[pickerSelectedItem][6], text: "Sat")
					}.foregroundColor(Color("Background3"))
						
						.animation(.easeIn.delay(0.1), value: 0.1)
				}
				.padding()

				VStack {
					Image("Seperator")
				}.padding()
				VStack {
					HStack {
						Image("Guide")
							.padding(.leading, 2)
						Text("How to improve it?")
							.foregroundColor(Color("Primary"))
							.font(.custom("MarkPro-Regular", size: 17))
							.multilineTextAlignment(.leading)
							.bold()
						Spacer()
					}
					HStack {
						Text("It is a long established fact that a reader will be distracted by the readable content.")
							.foregroundColor(Color("Primary"))
							.font(.custom("MarkPro-Regular", size: 17))
							.multilineTextAlignment(.leading)
							.lineLimit(nil)
							.bold()
							.padding(.horizontal)
						Spacer()
					}
					Spacer()
				}.padding([.leading, .top], 24)

					.frame(width: .infinity, height: 139)
					.cornerRadius(20)
					.background(Color(red: 0.169, green: 0.192, blue: 0.239).opacity(0.05), in: RoundedRectangle(cornerRadius: 32, style: .circular))
					.padding([.trailing, .leading], 24)
			}
			HStack {
				VStack(spacing: 3) {
					Text("\(title22)")
						.foregroundColor(.gray)
						.font(.custom("MarkPro", size: 11))
					Text("\(title23) \(title24)")
						.foregroundColor(.black)
						.font(.custom("MarkPro", size: 15))
						.bold()
				}
				Spacer()
				VStack(spacing: 3) {
					Text("\(title25)")
						.foregroundColor(.gray)
						.font(.custom("MarkPro", size: 11))
					Text("\(title26) \(title27)")
						.foregroundColor(.black)
						.font(.custom("MarkPro", size: 15))
						.bold()
				}
				Spacer()
				HStack {
					Button {} label: {
						Text("\(title25)")
							.foregroundColor(.black)
					}

				}.frame(width: 100, height: 40)
					.background(Color(.white))
					.cornerRadius(20)
			}

			.frame(width: .infinity, height: 118)
			.padding([.trailing, .leading], 24)
			.background(Color("\(title21)").blur(radius: 32))
			.shadow(color: Color("\(title21)"), radius: 30, x: 0, y: 0)
		}.frame(maxWidth: .infinity, maxHeight: .infinity)
			.background(Color("\(title21)"))
			.edgesIgnoringSafeArea(.all)
			.statusBarHidden()
	}
}

struct YouSleptView_Previews: PreviewProvider {
	static var previews: some View {
		YouSleptView()
			.statusBarHidden()
	}
}
