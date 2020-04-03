//
//  EuclideanView.swift
//  RulerCompass
//
//  Created by Donald Sheng on 2020-04-03.
//  Copyright © 2020 Gold Thumb Inc. All rights reserved.
//

import UIKit

class EuclideanView: UIView {

    override func draw(_ rect: CGRect) {
//        lineSegmentBisector()
//        angleBisector()
//        perpendicular()
        perpendicular2()
    }
    
    func perpendicular2() {
        let linePath = UIBezierPath()
        linePath.move(to: CGPoint(x: 200, y: 350))
        linePath.addLine(to: CGPoint(x: 600, y: 350))
        linePath.lineWidth = 3
        linePath.stroke()
        
        let pointPath = UIBezierPath()
        pointPath.move(to: CGPoint(x: 400 - 10, y: 200 - 10))
        pointPath.addLine(to: CGPoint(x: 400 + 10, y: 200 + 10))
        pointPath.move(to: CGPoint(x: 400 - 10, y: 200 + 10))
        pointPath.addLine(to: CGPoint(x: 400 + 10, y: 200 - 10))
        pointPath.lineWidth = 1
        pointPath.stroke()
        
        let compassPath1 = UIBezierPath()
        compassPath1.addArc(withCenter: CGPoint(x: 400, y: 200), radius: 150 * sqrt(2), startAngle: 0.2 * CGFloat.pi, endAngle: 0.8 * CGFloat.pi, clockwise: true)
        UIColor.brown.setStroke()
        compassPath1.stroke()
        
        let compassPath2 = UIBezierPath()
        compassPath2.addArc(withCenter: CGPoint(x: 400 + 150, y: 350), radius: 300, startAngle: 0.5 * CGFloat.pi, endAngle: 0.75 * CGFloat.pi, clockwise: true)
        UIColor.green.setStroke()
        compassPath2.stroke()
        
        let compassPath3 = UIBezierPath()
        compassPath3.addArc(withCenter: CGPoint(x: 400 - 150, y: 350), radius: 300, startAngle: 0.25 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        UIColor.green.setStroke()
        compassPath3.stroke()
        
        let bisectorPath = UIBezierPath()
        bisectorPath.move(to: CGPoint(x: 400, y: 50))
        bisectorPath.addLine(to: CGPoint(x: 400, y: 700))
        bisectorPath.lineWidth = 2
        UIColor.red.setStroke()
        bisectorPath.stroke()
    }
    
    func perpendicular() {
        let linePath = UIBezierPath()
        linePath.move(to: CGPoint(x: 200, y: 350))
        linePath.addLine(to: CGPoint(x: 500, y: 350))
        linePath.lineWidth = 3
        linePath.stroke()
        
        let pointPath = UIBezierPath()
        pointPath.move(to: CGPoint(x: 400 - 10, y: 350 - 10))
        pointPath.addLine(to: CGPoint(x: 400 + 10, y: 350 + 10))
        pointPath.move(to: CGPoint(x: 400 - 10, y: 350 + 10))
        pointPath.addLine(to: CGPoint(x: 400 + 10, y: 350 - 10))
        pointPath.lineWidth = 1
        pointPath.stroke()
        
        let compassPath1 = UIBezierPath()
        compassPath1.addArc(withCenter: CGPoint(x: 400, y: 350), radius: 100, startAngle: -0.1 * CGFloat.pi, endAngle: 0.1 * CGFloat.pi, clockwise: true)
        UIColor.brown.setStroke()
        compassPath1.stroke()
        
        let compassPath2 = UIBezierPath()
        compassPath2.addArc(withCenter: CGPoint(x: 400, y: 350), radius: 100, startAngle: 0.9 * CGFloat.pi, endAngle: 1.1 * CGFloat.pi, clockwise: true)
        UIColor.brown.setStroke()
        compassPath2.stroke()
        
        let compassPath3 = UIBezierPath()
        compassPath3.addArc(withCenter: CGPoint(x: 300, y: 350), radius: 300, startAngle: -0.5 * CGFloat.pi, endAngle: -0.25 * CGFloat.pi, clockwise: true)
        UIColor.green.setStroke()
        compassPath3.stroke()
        
        let compassPath4 = UIBezierPath()
        compassPath4.addArc(withCenter: CGPoint(x: 500, y: 350), radius: 300, startAngle: -0.5 * CGFloat.pi, endAngle: -0.75 * CGFloat.pi, clockwise: false)
        UIColor.green.setStroke()
        compassPath4.stroke()
        
        let bisectorPath = UIBezierPath()
        bisectorPath.move(to: CGPoint(x: 400, y: 50))
        bisectorPath.addLine(to: CGPoint(x: 400, y: 600))
        bisectorPath.lineWidth = 2
        UIColor.red.setStroke()
        bisectorPath.stroke()
    }
    
    func angleBisector() {
        let anglePath = UIBezierPath()
        anglePath.move(to: CGPoint(x: 400, y: 50))
        anglePath.addLine(to: CGPoint(x: 100, y: 350))
        anglePath.addLine(to: CGPoint(x: 400, y: 650))
        anglePath.lineWidth = 3
        anglePath.stroke()
        
        let compassPath1 = UIBezierPath()
        compassPath1.addArc(withCenter: CGPoint(x: 100, y: 350), radius: 300, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        UIColor.brown.setStroke()
        compassPath1.stroke()
        
        let compassPath2 = UIBezierPath()
        compassPath2.addArc(withCenter: CGPoint(x: 100 + 300/sqrt(2), y: 350 - 300/sqrt(2)), radius: 300, startAngle: 0, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        UIColor.green.setStroke()
        compassPath2.stroke()
        
        let compassPath3 = UIBezierPath()
        compassPath3.addArc(withCenter: CGPoint(x: 100 + 300/sqrt(2), y: 350 + 300/sqrt(2)), radius: 300, startAngle: -0.5 * CGFloat.pi, endAngle: 0, clockwise: true)
        UIColor.green.setStroke()
        compassPath3.stroke()
        
        let bisectorPath = UIBezierPath()
        bisectorPath.move(to: CGPoint(x: 100, y: 350))
        bisectorPath.addLine(to: CGPoint(x: 600, y: 350))
        bisectorPath.lineWidth = 2
        UIColor.red.setStroke()
        bisectorPath.stroke()
    }
    
    func lineSegmentBisector() {
        let rulerPath1 = UIBezierPath()
        rulerPath1.move(to: CGPoint(x: 200, y: 350))
        rulerPath1.addLine(to: CGPoint(x: 500, y: 350))
        rulerPath1.lineWidth = 3
        rulerPath1.stroke()
        
        let compassPath1 = UIBezierPath()
        compassPath1.addArc(withCenter: CGPoint(x: 200, y: 350), radius: 300, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        UIColor.green.setStroke()
        compassPath1.stroke()
        
        let compassPath2 = UIBezierPath()
        compassPath2.addArc(withCenter: CGPoint(x: 500, y: 350), radius: 300, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: false)
        UIColor.brown.setStroke()
        compassPath2.stroke()
        
        let rulerPath2 = UIBezierPath()
        rulerPath2.move(to: CGPoint(x: 350, y: 10))
        rulerPath2.addLine(to: CGPoint(x: 350, y: 700))
        rulerPath2.lineWidth = 2
        UIColor.red.setStroke()
        rulerPath2.stroke()
    }
}
