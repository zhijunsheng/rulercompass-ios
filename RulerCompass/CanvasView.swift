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
        pencil.stroke()
       
        let pen = UIBezierPath(arcCenter: CGPoint(x: 120 , y: bounds.height / 2), radius: 320, startAngle: -0.5 * CGFloat.pi, endAngle: CGFloat.pi * 0.5, clockwise: true)
        pen.stroke()
        
        let pe1 = UIBezierPath(arcCenter: CGPoint(x:bounds.width - 120 , y: bounds.height / 2), radius: 320, startAngle: -0.5 * CGFloat.pi, endAngle: CGFloat.pi * 0.5, clockwise: false)
        pe1.stroke()
        
        let pe = UIBezierPath()
        pe.move(to: CGPoint(x: bounds.width / 2 , y: bounds.height - 120))
        pe.addLine(to: CGPoint(x: bounds.width / 2 , y: 120 ))
        pe.stroke()
    }
 }
