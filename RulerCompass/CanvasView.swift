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
    
       drawAngle()
        //drawLineSegment()
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
        
    
        // how many πs are there is number 100?
        // 100 / 3.14
        // 0.5 / 3.14 => 0.5 / 3 => 5/30 => 1/6
        // roughly how many πs are there in 0.5?
        //arcs 6 * 0.5 =
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
