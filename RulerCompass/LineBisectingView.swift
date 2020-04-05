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
        //        lineBisecting()
        angleBisecting()
    }
    func angleBisecting() {
        let pencil = UIBezierPath()
        // angle
        pencil.move(to: CGPoint(x: 270, y: 200))
        pencil.addLine(to: CGPoint(x: 470, y: 100))
        
        pencil.move(to: CGPoint(x: 270, y: 200))
        pencil.addLine(to: CGPoint(x: 470, y: 300))
  
        
        //x
        pencil.move(to: CGPoint(x: 500, y: 175))
        pencil.addLine(to: CGPoint(x: 470, y: 225))
        
        pencil.move(to: CGPoint(x: 470, y: 170))
        pencil.addLine(to: CGPoint(x: 500, y: 220))
        pencil.lineWidth = 3
        pencil.stroke()
        // straight line
        let bisector = UIBezierPath()
        bisector.move(to: CGPoint(x: 270, y: 200))
        bisector.addLine(to: CGPoint(x: 670, y: 200))
        
        #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1).setStroke()
        bisector.stroke()
        
        
        let halfCircleAllIn1 = UIBezierPath(arcCenter:CGPoint(x: 270, y: 200), radius: 120, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1).setStroke()
        halfCircleAllIn1.lineWidth = 5
        halfCircleAllIn1.stroke()
    }
    func lineBisecting()  {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 270, y: 400))
        pencil.addLine(to: CGPoint(x: 470, y: 400))
        
        pencil.move(to: CGPoint(x: 270, y: 390))
        pencil.addLine(to: CGPoint(x: 270, y: 410))
        
        pencil.move(to: CGPoint(x: 470, y: 390))
        pencil.addLine(to: CGPoint(x: 470, y: 410))
        
        pencil.lineWidth = 3
        pencil.stroke()
        
        // Answer (middle point)
        let bisector = UIBezierPath()
        
        bisector.move(to: CGPoint(x: 370, y: 100))
        bisector.addLine(to: CGPoint(x: 370, y: 600))
        bisector.lineWidth = 2
        #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1).setStroke()
        bisector.stroke()
        
        
        let halfCircleAllIn1 = UIBezierPath(arcCenter:CGPoint(x: 270, y: 400), radius: 120, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1).setStroke()
        halfCircleAllIn1.lineWidth = 5
        halfCircleAllIn1.stroke()
        
        
        let halfCircle2 = UIBezierPath(arcCenter: CGPoint(x: 470, y: 400), radius: 120, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.6177716851, green: 0.9856142402, blue: 0.7465093136, alpha: 1).setStroke()
        halfCircle2.lineWidth = 5
        halfCircle2.stroke()
        
    }
    
}
