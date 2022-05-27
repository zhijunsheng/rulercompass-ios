//
//  RulerCompassView.swift
//  RulerCompass
//
//  Created by Kenneth Wu on 2022-05-24.
//  Copyright © 2022 daobao. All rights reserved.
//

import UIKit

class RulerCompassView: UIView {
    
    var problem = 0
    
    
    override func draw(_ rect: CGRect) {
        if problem == 1 {
            lineSegmentCenter()
        } else if problem == 2 {
            angleBisector()
        }
    }

    func angleBisector() {
        let pencil1 = UIBezierPath()
        pencil1.move(to: CGPoint(x: 400, y: 400))
        pencil1.addLine(to: CGPoint(x: 200, y: 400))
        pencil1.addLine(to: CGPoint(x: 400, y: 300))
        pencil1.lineWidth = 5
        pencil1.stroke()
        
        let arc1 = UIBezierPath(arcCenter: CGPoint(x: 200, y: 400), radius: 150, startAngle: 0.2, endAngle: -0.2 * CGFloat.pi, clockwise: false)
        UIColor.blue.setStroke()
        arc1.stroke()
        
        let angl = atan(100.0/200.0)
        let h = sin(angl) * 150
        let b = cos(angl) * 150
        let p1X = 200 + b
        let p1Y = 400 - h
        let p2X = 350
        let p2Y = 400
        
        let arc2 = UIBezierPath(arcCenter: CGPoint(x: p2X, y: p2Y), radius: 75, startAngle: -0.35 * CGFloat.pi, endAngle: -0.1 * CGFloat.pi, clockwise: true)
        arc2.stroke()

        let arc3 = UIBezierPath(arcCenter: CGPoint(x: p1X, y: p1Y), radius: 75, startAngle: 0.2 * CGFloat.pi, endAngle: 0, clockwise: false)
        arc3.stroke()
        
        let pencil2 = UIBezierPath()
        let angl2 = angl / 2
        let p3X: CGFloat = 600
        let p3Y = 400 - tan(angl2) * 400
        
        pencil2.move(to: CGPoint(x: 200, y: 400))
        pencil2.addLine(to: CGPoint(x: p3X, y: p3Y))
        
        UIColor.red.setStroke()
        pencil2.stroke()
    }
    
    func lineSegmentCenter() {
        let pencil1 = UIBezierPath()
        pencil1.move(to: CGPoint(x: 200, y: 350))
        pencil1.addLine(to: CGPoint(x: 500, y: 350))
        pencil1.lineWidth = 5
        pencil1.stroke()
        
        let radian90 = 90/180 * CGFloat.pi
        
        let arc1 = UIBezierPath(arcCenter: CGPoint(x: 500, y: 350), radius: 200, startAngle: radian90, endAngle: 3 * radian90, clockwise: true)
        UIColor.blue.setStroke()
        arc1.stroke()
        
        let arc2 = UIBezierPath(arcCenter: CGPoint(x: 200, y: 350), radius: 200, startAngle: radian90, endAngle: 3 * radian90, clockwise: false)
        arc2.stroke()
        
        let pencil2 = UIBezierPath()
        pencil2.move(to: CGPoint(x: 350, y: 100))
        pencil2.addLine(to: CGPoint(x: 350, y: 600))
        UIColor.red.setStroke()
        pencil2.stroke()
    }
}
