//
//  Onboarding04View.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 3/10/23.
//

import SwiftUI

@available(iOS 16.4, *)
struct Onboarding04View: View {
	@Environment(\.presentationMode) var presentationMode
	@State private var date = Date()
	//@State var showPicker: Bool
	let dateRange: ClosedRange<Date> = {
		let calendar = Calendar.current
		let startComponents = DateComponents(year: 2021, month: 1, day: 1)
		let endComponents = DateComponents(year: 2021, month: 12, day: 31, hour: 23, minute: 59, second: 59)
		return calendar.date(from: startComponents)!
			...
			calendar.date(from: endComponents)!
	}()
	
	var month = ["February",
	             "March",
	             "April",
	             "May",
	             "June",
	             "July",
	             "August",
	             "September",
	             "October",
	             "November",
	             "December"]
	
	var day = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"]
	var year = ["1945", "1946", "1947", "1948", "1949", "1950", "1951", "1952", "1953", "1954", "1956", "1957", "1958", "1959", "1960", "1961", "1962", "1963", "1964", "1965", "1966", "1967", "1968", "1969", "1970", "1971", "1972", "1973", "1974", "1975", "1976", "1977", "1978", "1979", "1980", "1981", "1982", "1983", "1984", "1985", "1986" , "1987", "1988", "1989", "1990", "1991", "1992", "1993" , "1994", "1995", "1996", "1997" , "1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014"]
	@State private var selectedMonth = "September"
	@State private var selectedDay = "11"
	@State private var selectedYear = "1986"
	var body: some View {
		NavigationView {
			VStack {
				
				
				VStack {
					VStack{
							//Button Back
						HStack {
							Button {
								presentationMode.wrappedValue.dismiss()
							} label: {
								Image("Back")
									.padding(.leading,3)
							}

							Spacer()
						}.padding([.trailing, .leading], 24)
							.padding(.top, 7)
							.padding(.bottom, 48)
							.padding()

						VStack{
							HStack{
								Image("Oneli")
									.resizable()
									.aspectRatio(contentMode: .fit)
									.frame(width: 38 , height: 16)
									.foregroundColor(Color("Secondary"))
									.padding([.top,.leading], 1)
								Spacer()
							}
							HStack{
								Text("When were you born?")

									.foregroundColor(.black)
									.font(.custom("MarkPro", size: 28))
									.fixedSize(horizontal: false, vertical: true)
									.padding([.bottom,.leading], 1)
								Spacer()

							}
						}.frame(width: 342,height: 58)
					}.padding(.top,20)


					.padding(.bottom, 150)
					
						// DateTime
					VStack {
						
						HStack {
							Picker("Please choose a month", selection: $selectedMonth) {
								ForEach(month, id: \.self) {
									Text($0)
								}
							}.pickerStyle(.wheel)
							
							
							Picker("Please choose a day", selection: $selectedDay) {
								ForEach(day, id: \.self) {
									Text($0)
								}
							}.pickerStyle(.wheel)
							
							
							Picker("Please choose a year", selection: $selectedYear) {
								ForEach(year, id: \.self) {
									Text($0)
								}
							}.pickerStyle(.wheel)
							
						}.padding()
						Spacer()
						
						
					}
					
					
					
				}
				HStack {
					NavigationLink {
						Onboarding05View()
						
					} label: {
						Text("Next")
							.font(.custom("MarkPro", size: 17))
							.bold()
							.foregroundColor(.primary)
						
					}.frame(width: 342, height: 50)
						.background(Color(.white))
						.cornerRadius(25)
				}.frame(width: 342, height: 50)
					.background(Color(.gray))
					.cornerRadius(25)
					.padding([.top], 20)
					.padding([.bottom], 49)
					.padding([.trailing, .leading], 24)
				
				
			}.frame(maxWidth: .infinity, maxHeight: .infinity)
				.background(Color("Background3"))
				.edgesIgnoringSafeArea(.all)
		}
//			.overlay(content: {
//				VStack{
//					TemplateTop()
//						.edgesIgnoringSafeArea(.all)
//					Spacer()
//				}
//			})
		
			.edgesIgnoringSafeArea(.all)
			.statusBarHidden()
			.navigationBarBackButtonHidden()
			
	}
}
@available(iOS 16.4, *)
struct OnboardingView1_Previews: PreviewProvider {
	static var previews: some View {
		Onboarding04View()
			.statusBarHidden()
	}
}
