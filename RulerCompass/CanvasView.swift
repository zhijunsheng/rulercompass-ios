//
//  CanvasView.swift
//  RulerCompass
//
//  Created by 吴淑雅 on 2021-10-12.
//  Copyright © 2021 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    override func draw(_ rect: CGRect) {
//        drawLineSegmentBisector()
        drawAngleBisector()
        drawCrosshair(x: 311, y: 250)
    }
    
    func drawAngleBisector() {
        let line = UIBezierPath()
        
        line.move(to: CGPoint(x: 100, y: 300))
        line.addLine(to: CGPoint(x: 300, y: 200))
        
        line.move(to: CGPoint(x: 100, y: 300))
        line.addLine(to: CGPoint(x: 300, y: 300))
        
        line.stroke()
        
        let circle = UIBezierPath(arcCenter: CGPoint(x: 100, y: 300), radius: 180, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: false)
        
        UIColor.red.setStroke()
        circle.lineWidth = 3
        circle.stroke()
        
        let circle2 = UIBezierPath(arcCenter: CGPoint(x: 280, y: 300), radius: 60, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: false)
        
        UIColor.darkGray.setStroke()
        circle2.stroke()
        
        let circle3 = UIBezierPath(arcCenter: CGPoint(x: 260, y: 218), radius: 60, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: false)
        
        UIColor.darkGray.setStroke()
        circle3.stroke()
        
        let line4 = UIBezierPath()
        
        line4.move(to: CGPoint(x: 100, y: 300))
        line4.addLine(to: CGPoint(x: 311, y: 250))
        
        line4.lineWidth = 3
        UIColor.blue.setStroke()
        line4.stroke()
    }
    
    func drawLineSegmentBisector() {
        let line1 = UIBezierPath()
//        base line
        
        line1.move(to: CGPoint(x: 265, y: 300))
        line1.addLine(to: CGPoint(x: 465, y: 300))
        
        // left ending bar
        
        line1.move(to: CGPoint(x: 265, y: 294))
        line1.addLine(to: CGPoint(x: 265, y: 306))
        
        // right ending bar
        
        line1.move(to: CGPoint(x: 465, y: 294))
        line1.addLine(to: CGPoint(x: 465, y: 306))
        
        line1.stroke()
        
        UIColor.red.setStroke()
        
        let circle1 = UIBezierPath(arcCenter: CGPoint(x: 265, y: 300), radius: 145, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: false)
        circle1.stroke()
        
        let circle2 = UIBezierPath(arcCenter: CGPoint(x: 465, y: 300), radius: 145, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: false)
        circle2.stroke()
        
        let line2 = UIBezierPath()
        
        line2.move(to: CGPoint(x: 365, y: 130))
        line2.addLine(to: CGPoint(x: 365, y: 500))
        
        line2.lineWidth = 3
        UIColor.blue.setStroke()
        line2.stroke()
    }
    func drawCrosshair(x: CGFloat, y: CGFloat) {
        let sniperThing = UIBezierPath()
        
        sniperThing.move(to: CGPoint(x: x - 10, y: y))
        sniperThing.addLine(to: CGPoint(x: x + 10, y: y))
        
        sniperThing.move(to: CGPoint(x: x, y: y - 10))
        sniperThing.addLine(to: CGPoint(x: x, y: y + 10))
        
        sniperThing.lineWidth = 2
        UIColor.red.setStroke()
        sniperThing.stroke()
    }
}

