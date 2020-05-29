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
        drawLineBisector()
        
    }
    
    func drawAngleBisector()  {
        
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
