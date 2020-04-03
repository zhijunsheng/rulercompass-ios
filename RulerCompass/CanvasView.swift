//
//  LineSegmentBisecterView.swift
//  RulerCompass
//
//  Created by Andy Yan on 2020-03-31.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    override func draw(_ rect: CGRect) {
    
       
        drawLineSegment()
    }
    
    func drawLineSegment() {
         let lineSegmentPath = UIBezierPath()
        lineSegmentPath.move(to: CGPoint(x: 200, y: 500))
        lineSegmentPath.addLine(to: CGPoint(x: 500, y: 500))
        
        lineSegmentPath.move(to: CGPoint(x: 200, y: 475))
        lineSegmentPath.addLine(to: CGPoint(x: 200, y: 525))
        
        lineSegmentPath.move(to: CGPoint(x: 500, y: 475))
        lineSegmentPath.addLine(to: CGPoint(x: 500, y: 525))
        
        lineSegmentPath.lineWidth = 3
        
        lineSegmentPath.stroke()
        
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 350, y: 300))
        pencil.addLine(to: CGPoint(x: 350, y: 700))
        pencil.stroke()
        
        let compassArc1 = UIBezierPath(arcCenter: CGPoint(x: 200, y: 500), radius: 200, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi / 2, clockwise: true)
        #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1).setStroke()
        compassArc1.stroke()
        
        let comapssArc2 = UIBezierPath(arcCenter: CGPoint(x: 500, y: 500), radius: 200, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi / 2, clockwise: false)
        #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1).setStroke()
        comapssArc2.stroke()
    }

}
