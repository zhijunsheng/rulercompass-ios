//
//  CanvasView.swift
//  RulerCompass
//
//  Created by jichengye on 2021/11/13.
//  Copyright © 2021 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    var forAngleBisector: Bool = false

    override func draw(_ rect: CGRect) {
        if forAngleBisector {
            drawAngleBisector()
        } else {
            drawLineSegmentBisector()
        }
    }
    
    func drawAngleBisector() {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 400, y: 300))
        line.addLine(to: CGPoint(x: 150, y: 400))
        line.addLine(to: CGPoint(x: 500, y: 400))
        line.lineWidth = 3
        line.stroke()
        
        let firstHelperCircle = UIBezierPath(arcCenter: CGPoint(x: 150, y: 400), radius: 100, startAngle: -1/3 * CGFloat.pi, endAngle: 1/4 * CGFloat.pi, clockwise: true)
        firstHelperCircle.lineWidth = 1
        UIColor.blue.setStroke()
        firstHelperCircle.stroke()
        
        UIColor.green.setStroke()
        let secondHelperCircle = UIBezierPath(arcCenter: CGPoint(x: 243, y: 363), radius: 200, startAngle: -0.11 * CGFloat.pi, endAngle: 0.04 * CGFloat.pi, clockwise: true)
        secondHelperCircle.stroke()
        
        let thirdHelperCircle = UIBezierPath(arcCenter: CGPoint(x: 250, y: 400), radius: 200, startAngle: -0.2 * CGFloat.pi, endAngle: -0.03 * CGFloat.pi, clockwise: true)
        thirdHelperCircle.stroke()
      
        let answerLine = UIBezierPath()
        answerLine.move(to: CGPoint(x: 150, y: 400))
        answerLine.addLine(to: CGPoint(x: 442, y: 344))
        UIColor.red.setStroke()
        answerLine.lineWidth = 2
        answerLine.stroke()
    }
    
    func drawLineSegmentBisector() {
        let line = UIBezierPath()
        
        line.move(to: CGPoint(x: 200, y: 364))
        line.addLine(to: CGPoint(x: 528, y: 364))
        
        line.move(to: CGPoint(x: 200, y: 364 - 10))
        line.addLine(to: CGPoint(x: 200, y: 364 + 10))
        
        line.move(to: CGPoint(x: 528, y: 364 - 10))
        line.addLine(to: CGPoint(x: 528, y: 364 + 10))
        
        line.lineWidth = 3
        line.stroke()
        
        UIColor.blue.setStroke()
        
        let arc = UIBezierPath(arcCenter: CGPoint(x: 200, y: 364), radius: 202, startAngle: -1/3 * CGFloat.pi, endAngle: 1/3 * CGFloat.pi, clockwise: true)
        arc.stroke()
        
        let arc0 = UIBezierPath(arcCenter: CGPoint(x: 528, y: 364), radius: 202, startAngle: -2/3 * CGFloat.pi, endAngle: 2/3 * CGFloat.pi, clockwise: false)
        arc0.stroke()
        
        let answerLine = UIBezierPath()
        answerLine.move(to: CGPoint(x: 364, y: 50))
        answerLine.addLine(to: CGPoint(x: 364, y: 678))
        UIColor.red.setStroke()
        answerLine.lineWidth = 5
        answerLine.stroke()
    }
    
    func drawCrosshair(x: CGFloat, y: CGFloat) {
        let line = UIBezierPath()
        let lineLength: CGFloat = 50
        
        line.move(to: CGPoint(x: x - lineLength, y: y))
        line.addLine(to: CGPoint(x: x + lineLength, y: y))
        line.move(to: CGPoint(x: x, y: y - lineLength))
        line.addLine(to: CGPoint(x: x, y: y + lineLength))
        UIColor.purple.setStroke()
        line.stroke()
    }

}
