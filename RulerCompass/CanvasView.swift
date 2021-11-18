//
//  CanvasView.swift
//  RulerCompass
//
//  Created by jichengye on 2021/11/13.
//  Copyright © 2021 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    override func draw(_ rect: CGRect) {
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

}
