//
//  CanvasView.swift
//  RulerCompass
//
//  Created by Felix Lo on 2020/5/27.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    var problemIndex: Int = -1
    
    override func draw(_ rect: CGRect) {
        if problemIndex == 0 {
            drawLineBisector()
        } else if problemIndex == 1 {
            drawAngleBisector()
        } else if problemIndex == 2 {
            drawScalTri()
        } else if problemIndex == 3 {
            drawPerHigh()
        }
    }
    
    func drawScalTri() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 50, y: 50))
        path.addLine(to: CGPoint(x: 200, y: 50))
        path.move(to: CGPoint(x: 50, y: 100))
        path.addLine(to: CGPoint(x: 300, y: 100))
        path.move(to: CGPoint(x: 50, y: 150))
        path.addLine(to: CGPoint(x: 400, y: 150))
        path.move(to: CGPoint(x: 300, y: 500))
        path.addLine(to: CGPoint(x: 650, y: 500))
        path.stroke()
        #colorLiteral(red: 0.3127173781, green: 0.5584113598, blue: 0.001741587184, alpha: 1).setStroke()
        UIBezierPath(arcCenter: (CGPoint(x: 300, y: 500)), radius: 150, startAngle: -0.25 * CGFloat.pi, endAngle: -0.15 * CGFloat.pi, clockwise: true).stroke()
        
        UIBezierPath(arcCenter: (CGPoint(x: 650, y: 500)), radius: 250, startAngle: -0.8 * CGFloat.pi, endAngle: -0.9 * CGFloat.pi, clockwise: false).stroke()
        let answerPath = UIBezierPath()
        #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1).setStroke()
        answerPath.move(to: CGPoint(x: 300, y: 500))
        answerPath.addLine(to: CGPoint(x: 419, y: 407))
        answerPath.addLine(to: CGPoint(x: 650, y: 500))
        answerPath.stroke()
    }
        
    
    func drawAngleBisector()  {
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 700, y: 200))
        path.addLine(to: CGPoint(x: 100, y: 400))
        path.addLine(to: CGPoint(x: 700, y: 600))
        path.stroke()
        #colorLiteral(red: 0.3127173781, green: 0.5584113598, blue: 0.001741587184, alpha: 1).setStroke()
        let arc = UIBezierPath(arcCenter: CGPoint(x: 500, y: 285), radius: 230, startAngle: -0.01 * CGFloat.pi, endAngle: 0.25 * CGFloat.pi, clockwise: true)
        arc.stroke()
        
        let arc2 = UIBezierPath(arcCenter: CGPoint(x: 500, y: 512), radius: 230, startAngle: -0.25 * CGFloat.pi, endAngle: 0.01 * CGFloat.pi, clockwise: true)
        arc2.stroke()
        
        let arc5 = UIBezierPath(arcCenter: CGPoint(x: 100, y: 400), radius: 415, startAngle: -0.2 * CGFloat.pi, endAngle: 0.2 * CGFloat.pi, clockwise: true)
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

    func drawPerHigh() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 25, y: 600))
        path.addLine(to: CGPoint(x: 750, y: 600))
        path.move(to: CGPoint(x: 380, y: 350))
        path.addLine(to: CGPoint(x: 350, y: 375))
        path.move(to: CGPoint(x: 350, y: 350))
        path.addLine(to: CGPoint(x: 380, y: 375))
        #colorLiteral(red: 0.3109099865, green: 0.5624674559, blue: 0, alpha: 1).setStroke()
        let arc = UIBezierPath(arcCenter: CGPoint(x: 365, y: 357.5), radius: 300, startAngle: 2 * CGFloat.pi, endAngle: -1 * CGFloat.pi, clockwise: true)
        arc.stroke()
       
        let arc2 = UIBezierPath(arcCenter: CGPoint(x: 200, y: 600), radius: 325, startAngle: -0.5 * CGFloat.pi, endAngle: 0 * CGFloat.pi, clockwise: true)
        arc2.stroke()
        
        let arc3 = UIBezierPath(arcCenter: CGPoint(x: 535, y: 600), radius: 325, startAngle: 1 * CGFloat.pi, endAngle: -0.5 * CGFloat.pi, clockwise: true)
        arc3.stroke()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        path.move(to: CGPoint(x: 365, y: 350))
        path.addLine(to: CGPoint(x: 365, y: 600))
        
        path.stroke()
    }
    
    
}
