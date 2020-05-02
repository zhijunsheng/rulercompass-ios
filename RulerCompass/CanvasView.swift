//
//  CanvasView.swift
//  RulerCompass
//
//  Created by Halwong on 2020/4/5.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    override func draw(_ rect: CGRect) {
//        drawLineSegmentBisector()
//        drawAngleBisector()
//        drawCrosshair(x: 280, y: 394)
        contest02()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let first = touches.first!
        let finger = first.location(in: self)
        print("(\(finger.x), \(finger.y))")
    }
    
    func contest02() {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 100, y: 674))
        line.addLine(to: CGPoint(x: 400, y: 674))
        line.stroke()
        
        let point1 = UIBezierPath(arcCenter: CGPoint(x: 313, y: 313), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        point1.fill()
        
        let point2 = UIBezierPath(arcCenter: CGPoint(x: 498, y: 313), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        point2.fill()
        
        #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1).setStroke()
        
        for i in 0 ..< 6 {
            let circle1 = UIBezierPath(arcCenter: CGPoint(x: 313, y: 313), radius: CGFloat(200 - 30 * i), startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            
            circle1.stroke()
            
            let circle2 = UIBezierPath(arcCenter: CGPoint(x: 498, y: 313), radius: CGFloat(100 + 30 * i), startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            circle2.stroke()
        }
        
        let dots: [CGPoint] = [
            CGPoint(x: 486.5, y: 216.5),
            CGPoint(x: 440, y: 200),
            CGPoint(x: 389.5, y: 200),
            CGPoint(x: 340, y: 210),
            CGPoint(x: 440, y: 200),
            CGPoint(x: 290, y: 240),
            CGPoint(x: 256, y: 258),
        ]
        
        for dot in dots {
            let dot = UIBezierPath(arcCenter: dot, radius: 3, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            dot.fill()
        }
    }
    
    func drawCrosshair(x: CGFloat, y: CGFloat) {
        let crosshair = UIBezierPath()
        crosshair.move(to: CGPoint(x: x, y: y - 100))
        crosshair.addLine(to: CGPoint(x: x, y: y + 100))
        crosshair.stroke()
        
        crosshair.move(to: CGPoint(x: x - 100, y: y))
        crosshair.addLine(to: CGPoint(x: x + 100, y: y))
        crosshair.stroke()
    }
    
    func drawAngleBisector() {
        let angle = UIBezierPath()
        angle.move(to: CGPoint(x: 234, y: 234))
        angle.addLine(to: CGPoint(x: 348, y: 534))
        angle.addLine(to: CGPoint(x: 144, y: 534))
        angle.lineWidth = 2
        angle.stroke()
        
        let circle1 = UIBezierPath(arcCenter: CGPoint(x: 348, y: 534), radius: 150, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle1.stroke()

        let circle2 = UIBezierPath(arcCenter: CGPoint(x: 198, y: 535), radius: 150, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle2.stroke()

        let circle3 = UIBezierPath(arcCenter: CGPoint(x: 295, y: 394), radius: 150, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle3.stroke()
        

        let angleBisector = UIBezierPath()
        angleBisector.move(to: CGPoint(x: 348, y: 534))
        angleBisector.addLine(to: CGPoint(x: 109, y: 374))
        angleBisector.stroke()
    }
    
    func drawLineSegmentBisector() {
        let line = UIBezierPath()
        
        line.move(to: CGPoint(x: 156, y: 350))
        line.addLine(to: CGPoint(x: 578, y: 350))
        
        line.move(to: CGPoint(x: 156, y: 330))
        line.addLine(to: CGPoint(x: 156, y: 370))
        
        line.move(to: CGPoint(x: 578, y: 330))
        line.addLine(to: CGPoint(x: 578, y: 370))
        
        line.stroke()
        
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        let circle1 = UIBezierPath(arcCenter: CGPoint(x: 156, y: 350), radius: 257, startAngle: -0.4 * CGFloat.pi, endAngle: 0.4 * CGFloat.pi, clockwise: true)
        circle1.stroke()
        
        #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1).setStroke()
        let circle2 = UIBezierPath(arcCenter: CGPoint(x: 578, y: 350), radius: 257, startAngle: 0.6 * CGFloat.pi, endAngle: 1.4 * CGFloat.pi, clockwise: true)
        circle2.stroke()
        
        let bisector = UIBezierPath()
        bisector.move(to: CGPoint(x: 367, y: 140))
        bisector.addLine(to: CGPoint(x: 367, y: 550))
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        bisector.lineWidth = 3
        bisector.stroke()
    }
}
