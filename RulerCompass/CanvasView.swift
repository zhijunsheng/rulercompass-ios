//
//  LineSegmentBisecterView.swift
//  RulerCompass
//
//  Created by Andy Yan on 2020-03-31.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    var code = 0
    
    override func draw(_ rect: CGRect) {
        if code == 1 {
            drawAngle()
        }
        
        if code == 2 {
            drawTriangleFrom3GivenLineSegments()
        }
        //drawAngle()
        //drawLineSegment()
    }
    func drawTriangleFrom3GivenLineSegments() {
        
        let pencil4 = UIBezierPath(arcCenter: CGPoint(x: 400, y: 400), radius: 112, startAngle: CGFloat.pi * 1.6, endAngle: CGFloat.pi * 1.9, clockwise: true)
        
        let pencil5 = UIBezierPath(arcCenter: CGPoint(x: 600, y: 400), radius: 150, startAngle: CGFloat.pi * 1.3, endAngle: CGFloat.pi * 1.11, clockwise: false)
        
        // the length is 100
        pencil4.move(to: CGPoint(x: 100, y: 100))
        pencil4.addLine(to: CGPoint(x: 212, y: 100))
        
        pencil4.move(to: CGPoint(x: 100, y: 150))
        pencil4.addLine(to: CGPoint(x: 250, y: 150))
        
        pencil4.move(to: CGPoint(x: 100, y: 200))
        pencil4.addLine(to: CGPoint(x: 300, y: 200))
        
        pencil4.move(to: CGPoint(x: 400, y: 400))
        pencil4.addLine(to: CGPoint(x: 600, y: 400))
        
        pencil4.move(to: CGPoint(x: 400, y: 400))
        pencil4.addLine(to: CGPoint(x: 490, y: 300))
        
        pencil4.move(to: CGPoint(x: 450, y: 300))
        pencil4.addLine(to: CGPoint(x: 600, y: 400))
        
        pencil4.stroke()
        pencil5.stroke()
        
    }
    func drawAngle() {
        
        // angle
        let pencil = UIBezierPath()

        pencil.move(to: CGPoint(x: 300, y: 400))
        pencil.addLine(to: CGPoint(x: 400, y: 200))

        pencil.move(to: CGPoint(x: 300, y: 400))
        pencil.addLine(to: CGPoint(x: 500, y: 400))

        pencil.lineWidth = 3
        pencil.stroke()
        
        let arc = UIBezierPath(arcCenter: CGPoint(x: 300, y: 400), radius: 150, startAngle: CGFloat.pi * 0.25, endAngle: -CGFloat.pi *  0.5, clockwise: false)
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        arc.stroke()

        let arc2 = UIBezierPath(arcCenter: CGPoint(x: 450, y: 400), radius: 150, startAngle: CGFloat.pi * 1.75, endAngle: CGFloat.pi * 1.6, clockwise: false)
        arc2.stroke()
        
        let arc3 = UIBezierPath(arcCenter: CGPoint(x: 375, y: 275), radius: 150, startAngle: CGFloat.pi * 1.9, endAngle: CGFloat.pi * 0.06, clockwise: true)
        arc3.stroke()
               
        let pencil2 = UIBezierPath()
        
        pencil2.move(to: CGPoint(x: 300, y: 400))
        pencil2.addLine(to: CGPoint(x: 550, y: 255))
        pencil2.lineWidth = 3
        #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1).setStroke()
        pencil2.stroke()
    }
   
    func drawCrossHair(x: CGFloat, y: CGFloat) {
                
        let pencil3 = UIBezierPath()
        pencil3.move(to: CGPoint(x: x, y: y - 50))
        pencil3.addLine(to: CGPoint(x: x, y: y + 50))

        pencil3.move(to: CGPoint(x: x - 50, y: y))
        pencil3.addLine(to: CGPoint(x: x + 50, y: y))

        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setStroke()

        pencil3.stroke()
    }
    
    func drawLineSegment() {
         let lineSegmentPath = UIBezierPath()
        lineSegmentPath.move(to: CGPoint(x: 200, y: 400))
        lineSegmentPath.addLine(to: CGPoint(x: 500, y: 400))
        
        lineSegmentPath.move(to: CGPoint(x: 200, y: 375))
        lineSegmentPath.addLine(to: CGPoint(x: 200, y: 425))
        
        lineSegmentPath.move(to: CGPoint(x: 500, y: 375))
        lineSegmentPath.addLine(to: CGPoint(x: 500, y: 425))
        
        lineSegmentPath.lineWidth = 3
        
        lineSegmentPath.stroke()
        
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 350, y: 200))
        pencil.addLine(to: CGPoint(x: 350, y: 600))
        pencil.stroke()
        
        let compassArc1 = UIBezierPath(arcCenter: CGPoint(x: 200, y: 400), radius: 200, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi / 2, clockwise: true)
        #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1).setStroke()
        compassArc1.stroke()
        
        let comapssArc2 = UIBezierPath(arcCenter: CGPoint(x: 500, y: 400), radius: 200, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi / 2, clockwise: false)
        #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1).setStroke()
        comapssArc2.stroke()
            
    }
}
