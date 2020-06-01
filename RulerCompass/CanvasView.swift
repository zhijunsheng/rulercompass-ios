//
//  CanvasView.swift
//  RulerCompass
//
//  Created by Felix Lo on 2020/5/27.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    
    override func draw(_ rect: CGRect) {
        drawAngleBisector()
    }
    
    
    
    func drawAngleBisector()  {
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 700, y: 200))
        path.addLine(to: CGPoint(x: 100, y: 400))
        path.addLine(to: CGPoint(x: 700, y: 600))
        path.stroke()
        #colorLiteral(red: 0.3127173781, green: 0.5584113598, blue: 0.001741587184, alpha: 1).setStroke()
        let arc3 = UIBezierPath(arcCenter: CGPoint(x: 500, y: 285), radius: 230, startAngle: -0.01 * CGFloat.pi, endAngle: 0.25 * CGFloat.pi, clockwise: true)
        arc3.stroke()
        
        let arc4 = UIBezierPath(arcCenter: CGPoint(x: 500, y: 512), radius: 230, startAngle: -0.25 * CGFloat.pi, endAngle: 0.01 * CGFloat.pi, clockwise: true)
        arc4.stroke()
        
        let arc5 = UIBezierPath(arcCenter: CGPoint(x: 100, y: 400), radius: 415, startAngle: -0.1 * CGFloat.pi, endAngle: 0.1 * CGFloat.pi, clockwise: true)
        arc5.stroke()
        #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1).setStroke()
        let answerPath = UIBezierPath()
        answerPath.lineWidth = 2
        answerPath.move(to: CGPoint(x: 750, y: 400))
        answerPath.addLine(to: CGPoint(x: 100, y: 400))
        answerPath.stroke()
    }
    
    func drawLineBisector()  {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 100, y: 350))
        path.addLine(to: CGPoint(x: 650, y: 350))
        path.move(to: CGPoint(x: 100, y: 325))
        path.addLine(to: CGPoint(x: 100, y: 375))
        path.move(to: CGPoint(x: 650, y: 325))
        path.addLine(to: CGPoint(x: 650, y: 375))
        path.lineWidth = 3
        path.stroke()
        
        #colorLiteral(red: 0.3084011078, green: 0.5618229508, blue: 0, alpha: 1).setStroke()
        let arc = UIBezierPath(arcCenter: CGPoint(x: 100, y: 350), radius: 350, startAngle: -0.35 * CGFloat.pi, endAngle: 0.35 * CGFloat.pi, clockwise: true)
        arc.stroke()
        
        let arc2 = UIBezierPath(arcCenter: CGPoint(x: 650, y: 350), radius: 350, startAngle: -0.65 * CGFloat.pi, endAngle: 0.65 * CGFloat.pi, clockwise: false)
        arc2.stroke()
        
        
        let answerPath = UIBezierPath()
        #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1).setStroke()
        answerPath.lineWidth = 2
        answerPath.move(to: CGPoint(x: 375, y: 100))
        answerPath.addLine(to: CGPoint(x: 375, y: 600))
        answerPath.stroke()
    }

}
