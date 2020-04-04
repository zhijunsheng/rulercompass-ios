//
//  CanvasView.swift
//  RulerCompass
//
//  Created by Angie Yan on 2020-04-01.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {


    override func draw(_ rect: CGRect) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 200, y: 300))
        pencil.addLine(to: CGPoint(x: 500, y: 300))
       
        // first end
        pencil.move(to: CGPoint(x: 200, y: 280))
        pencil.addLine(to: CGPoint(x: 200, y: 320))
        pencil.stroke()
       
        /*
         x1 = 200
         x2 = 500
         x' = 200 + 300/2
            = 200 + 150
            = 350
         x' = x1 + (x2 - x1) * 0.5
            = x1 + x2 * 0.5 - x1 * 0.5
            = x1 * 0.5 + x2 * 0.5
            = (x1 + x2) * 0.5
            = (x1 + x2) / 2
            = (200 + 500) / 2
            = 700 / 2
            = 350
         length of the line = 300
         */
        
        // second end
        pencil.move(to: CGPoint(x: 500, y: 280))
        pencil.addLine(to: CGPoint(x: 500, y: 320))
        
        pencil.lineWidth = 3
        
        pencil.stroke()
        
        let arc1 = UIBezierPath(arcCenter: CGPoint(x: 200, y: 300), radius: 180, startAngle: CGFloat.pi * 1.5, endAngle: 0.3 * CGFloat.pi, clockwise: true)
        arc1.lineWidth = 3
        #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1).setStroke()
        arc1.stroke()
        
        let arc2 = UIBezierPath(arcCenter: CGPoint(x: 500, y: 300), radius: 180, startAngle: CGFloat.pi / 1.6, endAngle: CGFloat.pi * 1.3, clockwise: true)
        arc2.lineWidth = 3
        #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1).setStroke()
        arc2.stroke()
        
        
        let bisector = UIBezierPath()
        bisector.move(to: CGPoint(x: 350, y: 100))
        bisector.addLine(to: CGPoint(x: 350, y: 500))
        #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setStroke()
        
        bisector.lineWidth = 3
        bisector.stroke()

    }


}



