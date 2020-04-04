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
