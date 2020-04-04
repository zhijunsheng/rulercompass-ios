//
//  LineBisectingView.swift
//  RulerCompass
//
//  Created by Elaine on 2020-03-31.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class LineBisectingView: UIView {
    override func draw(_ rect: CGRect) {
        let pencil = UIBezierPath()
        let pencil1 = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 270, y: 500))
        pencil.addLine(to: CGPoint(x: 470, y: 500))
        pencil1.move(to: CGPoint(x: 370, y: 200))
        pencil1.addLine(to: CGPoint(x: 370, y: 700))
        pencil.lineWidth = 3
        pencil.stroke()
        
        pencil1.move(to: CGPoint(x: 370, y: 200))
        pencil1.addLine(to: CGPoint(x: 370, y: 700))
        pencil.lineWidth = 1
        pencil1.stroke()
        
        // negative
        let halfCircleAllIn1 = UIBezierPath(arcCenter:CGPoint(x: 270, y: 500), radius: 120, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        
        halfCircleAllIn1.stroke()
        
        
        let halfCircle2 = UIBezierPath(arcCenter: CGPoint(x: 470, y: 500), radius: 120, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: false)
        
        halfCircle2.stroke()
        
    }
    
    
}
