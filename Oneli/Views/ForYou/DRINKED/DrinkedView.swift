//
//  DrinkedView.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/31/23.
//

import SwiftUI
 
struct DrinkedView: View {
	@Environment(\.presentationMode) var presentationMode
	@State var pickerSelectedItem = 0
	@State var dataPoints: [[CGFloat]] = [[20,40,150,200,130,80,25],[150,120,150,200,122,200,21],[30,120,1,20,130,15,25]]
	
	@State private var selection = "Weekly"
	let daysPicker = ["Weekly", "Monthly", "Today"]
	
	var MarkProTitle2Font: Font = .custom("MarkPro", size: 34)
	var MarkProRegularFont: Font = .custom("MarkPro-Regular", size: 17)
	var MarkProCaption2Font: Font = .custom("MarkPro-Regular", size: 11)
	var MarkProfootNoteFont: Font = .custom("MarkPro-Regular", size: 13)
	
	var title1: String = "DRINKED"
	var title2: String = "1200"
	var title201: String = "ml"
	var title3: String = "+12,750"
	var title4: String = "ml"
	var title5: String = "Optimized"
	
		//image
	var title6: String = "Water1"
	var title7: String = "PURE"
	var title8: String = "1,350"
	var title9: String = "ml"
	
		//image
	var title10: String = "Caffeine"
	var title11: String = "CAFFEINE"
	var title12: String = "15"
	var title13: String = "gr"
	
		//image
	var title14: String = "Alcoholic"
	var title15: String = "ALCOHOLIC"
	var title16: String = "140"
	var title17: String = "ml"
	
	var title18: String = "LABEL"
	var title19: String = "0"
	var title20: String = "Description"
	var title21: String = "BluePastel"
	var title22: String = "DAILY GOAL"
	var title23: String = "2,350"
	var title24: String = "ml"
	var title25: String = "Add"
	
	var body: some View {
		VStack{
			Spacer()
			VStack(alignment: .trailing, content: {
				HStack{
					HStack{
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
			//.padding(.top,20)
			VStack {
				HStack{
					Text("\(title1)")
						.font(.custom("MarkPro", size: 15))
						.foregroundColor(Color("Secondary"))
					Spacer()
				}.padding(.leading,24)
				HStack{
					Text("\(title2)")
						.font(.custom("MarkPro", size: 34))
						.bold()
						.foregroundColor(Color("Primary"))
					
					Text("\(title201)")
						.font(.custom("MarkPro", size: 22))
						.bold()
						.foregroundColor(Color("Primary"))
					Spacer()
				}.padding(.leading,24)
				HStack{
					Text("\(title3)")
						.font(.custom("MarkPro", size: 15))
					
						.foregroundColor(Color("Primary"))
					Text("\(title4)\(title5)")
						.font(.custom("MarkPro", size: 15))
					
						.foregroundColor(Color("Primary"))
					Spacer()
				}.padding(.leading,24)
				
			}
			Spacer()
			ScrollView(.vertical, showsIndicators: false){
					//Header
				
				
					//Main Container
				VStack{
						//Third Container
					HStack{
							//Drinked View
						VStack{
							
							CircleCustomeView(nameImage: "\(title6)")
							
							Text("\(title7)")
								.foregroundColor(Color("Secondary"))
								.font(.custom("MarkPro", size: 11))
								.padding(.top,8)
							HStack{
								Text("\(title8) \(title9)")
									.foregroundColor(Color("Primary"))
									.font(.custom("MarkPro", size: 15))
									.bold()
							}.padding(.top,0)
						}.padding([.leading,.trailing, .bottom], 10)
						
						VStack{
							
							CircleCustomeView(nameImage: "\(title10)")
							Text("\(title11)")
								.foregroundColor(Color("Secondary"))
								.font(.custom("MarkPro", size: 11))
								.padding(.top,8)
							HStack{
								Text("\(title12) \(title13)")
									.foregroundColor(Color("Primary"))
									.font(.custom("MarkPro", size: 15))
									.bold()
								
							}.padding(.top,0)
						}.padding([.leading,.trailing, .bottom], 10)
						
						VStack{
							
							CircleCustomeView(nameImage: "\(title14)")
							Text("\(title15)")
								.foregroundColor(Color("Secondary"))
								.font(.custom("MarkPro", size: 11))
								.padding(.top,8)
							HStack{
								Text("\(title16) \(title17)")
									.foregroundColor(Color("Primary"))
									.font(.custom("MarkPro", size: 15))
									.bold()
							}.padding(.top,0)
						}.padding([.leading,.trailing, .bottom], 10)
						
					}
					
				}.padding(.top,40)
				VStack{
					Image("Seperator")
				}
				VStack {
					HStack{
						VStack{
							HStack{
								Text("\(title18)")
									.font(.custom("MarkPro", size: 11))
									.foregroundColor(Color("Secondary"))
								Spacer()
							}.padding(.leading,24)
							
							HStack{
								
								Text("\(title19)")
									.font(.custom("MarkPro", size: 15))
								
									.foregroundColor(Color("Primary"))
								
								Spacer()
							}.padding(.leading,24)
							
							HStack{
								Text("\(title20)")
									.font(.custom("MarkPro", size: 11))
								
									.foregroundColor(Color("Secondary"))
								Spacer()
							}.padding(.leading,24)
						}
						VStack {
							HStack{
								
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
							.background(Color(red:0.169, green: 0.192, blue:0.239).opacity(0.05), in: RoundedRectangle(cornerRadius: 32, style: .circular))
								
								
							}
							
							
							.cornerRadius(20)
							.padding()
							
						}

					}
				}
					//	Chart
				VStack { // Rings start
					HStack{
						Barview(value: dataPoints[pickerSelectedItem][0],text: "Sun")
						Barview(value: dataPoints[pickerSelectedItem][1],text: "Mon")
						Barview(value: dataPoints[pickerSelectedItem][2],text: "Tue")
						Barview(value: dataPoints[pickerSelectedItem][3],text: "Wed")
						Barview(value: dataPoints[pickerSelectedItem][4],text: "Thu")
						Barview(value: dataPoints[pickerSelectedItem][5],text: "Fri")
						Barview(value: dataPoints[pickerSelectedItem][6],text: "Sat")
					}.animation(.easeIn(duration: 0.1).delay(0.1), value: 0.1)
						.foregroundColor(Color("Background3"))

					
				}
				.padding()
				
				
				VStack{
					Image("Seperator")
				}.padding()
				VStack {
					HStack{
						
						Image("Guide")
							.padding(.leading,2)
						Text("How to improve it?")
							.foregroundColor(Color("Primary"))
							.font(.custom("MarkPro-Regular", size: 17))
							.multilineTextAlignment(.leading)
							.bold()
						Spacer()
					}
					HStack{
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
				}.padding([.leading,.top], 24)
				
					.frame(width: .infinity, height: 139 )
					.cornerRadius(20)
					.background(Color(red:0.169, green: 0.192, blue:0.239).opacity(0.05), in: RoundedRectangle(cornerRadius: 32, style: .circular))
					.padding([.trailing,.leading],24)
				
				
			}
			HStack{
				VStack(spacing: 3){
					Text("\(title22)")
						.foregroundColor(.gray)
						.font(.custom("MarkPro", size: 11))
					Text("\(title23) \(title24)" )
						.foregroundColor(.black)
						.font(.custom("MarkPro", size: 15))
						.bold()
				}
				Spacer()
				HStack{
					Button {
						
					} label: {
						Text("\(title25)")
							.foregroundColor(.black)
					}
					
					
				}.frame(width: 78, height: 40)
					.background(Color(.white))
					.cornerRadius(20)
				
				
				
				
			}
			
			.frame(width: .infinity, height: 118 )
			.padding([.trailing,.leading],24)
			.background(Color("\(title21)").blur(radius: 32))
			.shadow(color: Color("\(title21)"),radius: 30,x:0,y:0)
		}.frame(maxWidth:.infinity, maxHeight: .infinity)
			.background(Color("\(title21)"))
			.edgesIgnoringSafeArea(.all)
			.statusBarHidden()
		
		
		
	}
	
	
}




struct  DrinkedView_Previews: PreviewProvider {
	static var previews: some View {
		DrinkedView()
			.statusBarHidden()
	}
}

