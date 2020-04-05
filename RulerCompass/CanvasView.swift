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
        drawLineSegmentBisector()
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
        let circle1 = UIBezierPath(arcCenter: CGPoint(x: 156, y: 350), radius: 257, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle1.stroke()
        
        let circle2 = UIBezierPath(arcCenter: CGPoint(x: 578, y: 350), radius: 257, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle2.stroke()
        
        let bisector = UIBezierPath()
        bisector.move(to: CGPoint(x: 367, y: 140))
        bisector.addLine(to: CGPoint(x: 367, y: 550))
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        bisector.lineWidth = 3
        bisector.stroke()
        
    }
}
