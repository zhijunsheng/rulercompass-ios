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
      
        pencil.move(to: CGPoint(x: 270, y: 500))
        pencil.addLine(to: CGPoint(x: 470, y: 500))
        
        pencil.move(to: CGPoint(x: 270, y: 490))
        pencil.addLine(to: CGPoint(x: 270, y: 510))
        
        pencil.move(to: CGPoint(x: 470, y: 490))
        pencil.addLine(to: CGPoint(x: 470, y: 510))
        
        pencil.lineWidth = 3
        pencil.stroke()
        
        // Answer (middle point)
        let bisector = UIBezierPath()
            
        bisector.move(to: CGPoint(x: 370, y: 200))
        bisector.addLine(to: CGPoint(x: 370, y: 700))
        bisector.lineWidth = 2
        #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1).setStroke()
        bisector.stroke()
        
        
        let halfCircleAllIn1 = UIBezierPath(arcCenter:CGPoint(x: 270, y: 500), radius: 120, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1).setStroke()
        halfCircleAllIn1.lineWidth = 5
        halfCircleAllIn1.stroke()
        
        
        let halfCircle2 = UIBezierPath(arcCenter: CGPoint(x: 470, y: 500), radius: 120, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.6177716851, green: 0.9856142402, blue: 0.7465093136, alpha: 1).setStroke()
        halfCircle2.lineWidth = 5
        halfCircle2.stroke()
        
    }
    
    
}
