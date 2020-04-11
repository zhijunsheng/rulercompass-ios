//
//  CanvasView.swift
//  RulerCompass
//
//  Created by Lambert Lin on 2020/4/1.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    override func draw(_ rect: CGRect) {
//        drawLineSegmentBisector()
        drawAngleBisector()
    }
    
    func drawAngleBisector() {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 120 , y: bounds.height / 2))
        pencil.addLine(to: CGPoint(x: bounds.width - 120 , y: bounds.height / 2))
        
        pencil.move(to: CGPoint(x: 120 , y: bounds.height / 2))
        pencil.addLine(to: CGPoint(x: bounds.width - 120, y: bounds.height / 2 - 200))
        pencil.lineWidth = 5
        pencil.stroke()
        
        let p2 = UIBezierPath(arcCenter: CGPoint(x: 120 , y: bounds.height / 2), radius: 300, startAngle: -0.2 * CGFloat.pi, endAngle: 0.1 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        p2.stroke()
        
        let p = UIBezierPath(arcCenter: CGPoint(x: 397 , y: 250), radius: 300, startAngle: -0.2 * CGFloat.pi, endAngle: 0.1 * CGFloat.pi, clockwise: true)
        p.stroke()

        let p1 = UIBezierPath(arcCenter: CGPoint(x: 420 , y: 365), radius: 300, startAngle: -0.2 * CGFloat.pi, endAngle: 0.1 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1).setStroke()
        p1.stroke()
        
        crosshair(x: 697, y: 250)
        
        let answer = UIBezierPath()
        answer.move(to: CGPoint(x: 120, y: bounds.height / 2))
        answer.addLine(to: CGPoint(x: 697, y: 250))
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        answer.lineWidth = 6
        answer.stroke()
        
    }
    
    
    func crosshair(x: CGFloat, y: CGFloat)  {
       
        
        let cross = UIBezierPath()
        cross.move(to: CGPoint(x: x - 50, y: y))
        cross.addLine(to: CGPoint(x: x + 50, y: y ))
        cross.move(to: CGPoint(x: x, y: y
            - 50))
        cross.addLine(to: CGPoint(x: x, y: y + 50))
        cross.stroke()
    }
    
    func drawLineSegmentBisector() {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 120 , y: bounds.height / 2))
        pencil.addLine(to: CGPoint(x:bounds.width - 120 , y: bounds.height / 2))
        
        pencil.move(to: CGPoint(x: 120 , y: bounds.height / 2 - 12))
        pencil.addLine(to: CGPoint(x: 120 , y: bounds.height / 2 + 12))
        
        pencil.move(to: CGPoint(x: bounds.width - 120  , y: bounds.height / 2 - 12))
        pencil.addLine(to: CGPoint(x: bounds.width - 120 , y: bounds.height / 2 + 12))
        
        pencil.lineWidth = 5
        pencil.stroke()
        
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setStroke()
        let pen = UIBezierPath(arcCenter: CGPoint(x: 120 , y: bounds.height / 2), radius: 320, startAngle: -0.5 * CGFloat.pi, endAngle: CGFloat.pi * 0.5, clockwise: true)
        pen.lineWidth = 3
        pen.stroke()
        
        let pe1 = UIBezierPath(arcCenter: CGPoint(x:bounds.width - 120 , y: bounds.height / 2), radius: 320, startAngle: -0.5 * CGFloat.pi, endAngle: CGFloat.pi * 0.5, clockwise: false)
        pe1.lineWidth = 3
        pe1.stroke()
        
        #colorLiteral(red: 0.9950962663, green: 0.1524247825, blue: 0.001851926907, alpha: 1).setStroke()
        let pe = UIBezierPath()
        pe.move(to: CGPoint(x: bounds.width / 2 , y: bounds.height - 120))
        pe.addLine(to: CGPoint(x: bounds.width / 2 , y: 120 ))
        pe.lineWidth = 6
        pe.stroke()
    }
 }
