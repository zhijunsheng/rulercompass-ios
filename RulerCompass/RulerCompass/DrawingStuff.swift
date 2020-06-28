//
//  DrawingStuff.swift
//  RulerCompass
//
//  Created by Peter Shi on 2020-06-26.
//  Copyright © 2020 Peter Shi. All rights reserved.
//

import SwiftUI

struct DrawingStuff: View {
    var body: some View {
        ZStack {
            Path { rulerLine in
                let w: CGFloat = 414
                let h: CGFloat = 414
                rulerLine.move(to: CGPoint(x: w - 200, y: h - 200))
                rulerLine.addLine(to: CGPoint(x: 200, y: h - 200))
                rulerLine.addLine(to: CGPoint(x: 200, y: 200))
    
    //            compassLine1.addArc(withCenter: CGPoint(x: 350, y: bounds.height - 200), radius: 200, startAngle: CGFloat.pi * 1.45, endAngle: CGFloat.pi * 1.6, clockwise: true)
    //            compassLine2.addArc(withCenter: CGPoint(x: 200, y: bounds.height - 350), radius: 200, startAngle: CGFloat.pi * 1.9, endAngle: CGFloat.pi * 0.05, clockwise: true)
                rulerLine.move(to: CGPoint(x: w - 100, y: 100))
                rulerLine.addLine(to: CGPoint(x: 100, y: h - 100))
                
    //            compassLine.stroke()
    //            compassLine1.stroke()
    //            compassLine2.stroke()
            }
            .stroke()
            
            
            Path { compassLine in
                let w: CGFloat = 414
                let h: CGFloat = 414
                compassLine.addArc(center: CGPoint(x: 200, y: h - 350), radius: 150, startAngle: Angle(degrees: 266.4), endAngle: Angle(degrees: 3.6), clockwise: true)
//                compassLine.addArc(withCenter: CGPoint(x: 200, y: h - 200), radius: 150, startAngle: CGFloat.pi * 1.48, endAngle: CGFloat.pi * 0.02, clockwise: true)
            }
            .stroke()
            Path { compassLine1 in
                let w: CGFloat = 414
                let h: CGFloat = 414
                compassLine1.addArc(center: CGPoint(x: 350, y: h - 200), radius: 200, startAngle: Angle(degrees: 342), endAngle: Angle(degrees: 9), clockwise: true)
            }
            .stroke()
            Path { compassLine2 in
                let w: CGFloat = 414
                let h: CGFloat = 414
                compassLine2.addArc(center: CGPoint(x: 350, y: h - 200), radius: 200, startAngle: Angle(degrees: 261), endAngle: Angle(degrees: 288), clockwise: true)
            }
            .stroke()
        }
    }
}

struct DrawingStuff_Previews: PreviewProvider {
    static var previews: some View {
        DrawingStuff()
    }
}
