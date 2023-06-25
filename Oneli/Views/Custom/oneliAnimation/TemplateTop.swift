//
//  TemplateTop.swift
//  Oneli
//
//  Created by PhD Hossein Payami on 4/9/23.
//

import SwiftUI

struct TemplateTop: View {
    var body: some View {
		
		VStack(alignment: .center){
			Image("Pattern")
				.resizable()
				.scaledToFill()
				.frame(width: screenBounds().width, height: screenBounds().height/2)
				.blur(radius: 60)
				.offset(x: -65,y: 0)
			Spacer()
				//			ZStack(alignment:.top){
				//				ZStack{
				//					shapez1()
				//						.fill(.purple).opa
				//						.offset(x: 0,y: 0)
				////
				//						.frame(width: 400,height: 400)
				//					//	.rotationEffect(Angle(degrees: 130))
				//						//.blur(radius: 0)
				//
				//
				//					Spacer()
				//
				//				}.zIndex(2)
				//				ZStack{
				//						shapez2()
				//
				//						.offset(x: -50,y: 10)
				//						.padding(.top,0)
				//						.padding(.bottom,108.05)
				//						.padding(.trailing,136.79)
				//						.padding(.leading,206.52)
				//						.frame(width: 291.95,height: 318.1)
				//						.background(Color(red:222, green: 22 , blue: 255))
				//						.foregroundColor(Color(red:222, green: 22 , blue: 255))
				//						//.rotationEffect(Angle(degrees: 0))
				//						.blur(radius: 0)
				//					Spacer()
				//
				//				}
				//				.zIndex(3)
				//				ZStack{
				//					shapez3()
				//						.offset(x: 0 ,y: 0)
				//						.background(Color(red:222, green: 22 , blue: 255).opacity(1))
				//
				//						.padding(.top,108.05)
				//						.padding(.bottom,0)
				//						.padding(.trailing,136.79)
				//						.padding(.leading,343.31)
				//						.frame(width: 291.95,height: 318.1)
				//						//.rotationEffect(Angle(degrees: 16.76))
				//						.blur(radius: 0)
				//
				//
				//					Spacer()
				//				}
				//				.zIndex(1)
				//			}.frame(width: screenBounds().width)
				//
				//		}.offset(x:30, y:-150)
		} .padding()
			.offset(x:10,y:-210)
			
    }
}

struct TemplateTop_Previews: PreviewProvider {
    static var previews: some View {
        TemplateTop()
    }
}
struct shapez1: Shape {
	func path(in rect: CGRect) -> Path {
		var path = Path()
		let width = rect.size.width
		let height = rect.size.height
		path.move(to: CGPoint(x: 0.78728*width, y: 0.37508*height))
		path.addCurve(to: CGPoint(x: 0.62703*width, y: 0.80627*height), control1: CGPoint(x: 0.84985*width, y: 0.56764*height), control2: CGPoint(x: 0.80717*width, y: 0.75347*height))
		path.addCurve(to: CGPoint(x: 0.21908*width, y: 0.55838*height), control1: CGPoint(x: 0.4469*width, y: 0.85907*height), control2: CGPoint(x: 0.28165*width, y: 0.75094*height))
		path.addCurve(to: CGPoint(x: 0.34959*width, y: 0.22619*height), control1: CGPoint(x: 0.15651*width, y: 0.36583*height), control2: CGPoint(x: 0.17511*width, y: 0.28561*height))
		path.addCurve(to: CGPoint(x: 0.78728*width, y: 0.37508*height), control1: CGPoint(x: 0.6187*width, y: 0.13455*height), control2: CGPoint(x: 0.72471*width, y: 0.18252*height))
		path.closeSubpath()
		return path
	}
}
struct shapez2: Shape {
	func path(in rect: CGRect) -> Path {
		var path = Path()
		let width = rect.size.width
		let height = rect.size.height
		path.move(to: CGPoint(x: 0.7864*width, y: 0.375*height))
		path.addCurve(to: CGPoint(x: 0.62615*width, y: 0.80618*height), control1: CGPoint(x: 0.84896*width, y: 0.56755*height), control2: CGPoint(x: 0.80628*width, y: 0.75339*height))
		path.addCurve(to: CGPoint(x: 0.21819*width, y: 0.5583*height), control1: CGPoint(x: 0.44601*width, y: 0.85898*height), control2: CGPoint(x: 0.28076*width, y: 0.75086*height))
		path.addCurve(to: CGPoint(x: 0.3487*width, y: 0.22611*height), control1: CGPoint(x: 0.15562*width, y: 0.36574*height), control2: CGPoint(x: 0.17422*width, y: 0.28553*height))
		path.addCurve(to: CGPoint(x: 0.7864*width, y: 0.375*height), control1: CGPoint(x: 0.61782*width, y: 0.13447*height), control2: CGPoint(x: 0.72383*width, y: 0.18244*height))
		path.closeSubpath()
		return path
	}
}
struct shapez3: Shape {
	func path(in rect: CGRect) -> Path {
		var path = Path()
		let width = rect.size.width
		let height = rect.size.height
		path.move(to: CGPoint(x: 0.78641*width, y: 0.37508*height))
		path.addCurve(to: CGPoint(x: 0.62645*width, y: 0.80627*height), control1: CGPoint(x: 0.84886*width, y: 0.56764*height), control2: CGPoint(x: 0.80626*width, y: 0.75347*height))
		path.addCurve(to: CGPoint(x: 0.21925*width, y: 0.55838*height), control1: CGPoint(x: 0.44665*width, y: 0.85907*height), control2: CGPoint(x: 0.2817*width, y: 0.75094*height))
		path.addCurve(to: CGPoint(x: 0.34952*width, y: 0.22619*height), control1: CGPoint(x: 0.1568*width, y: 0.36583*height), control2: CGPoint(x: 0.17536*width, y: 0.28561*height))
		path.addCurve(to: CGPoint(x: 0.78641*width, y: 0.37508*height), control1: CGPoint(x: 0.61814*width, y: 0.13455*height), control2: CGPoint(x: 0.72395*width, y: 0.18252*height))
		path.closeSubpath()
		return path
	}
}
extension Shape {
	func style<S: ShapeStyle, F: ShapeStyle>(
		withStroke strokeContent: S,
		lineWidth: CGFloat = 1,
		fill fillContent: F
	) -> some View {
		self.stroke(strokeContent, lineWidth: lineWidth)
			.background(fill(fillContent))
	}
}
