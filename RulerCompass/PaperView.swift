//
//  LineSegmentBisectorView.swift
//  RulerCompass
//
//  Created by Peter Shi on 2020-03-31.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class PaperView: UIView {
    var pageNumber = 1
    
    override func draw(_ rect: CGRect) {
        switch pageNumber {
        case 1:
            lineSegmentBisector()
        case 2:
            angleBisector()
        case 3:
            rightTriangleInSemiCircle()
        case 4:
            threeLinesThatMakeATriangle()
        default:
            break
        }
    }
    
    func lineSegmentBisector() {
        let rulerLine = UIBezierPath()
        let compassLine = UIBezierPath()
        rulerLine.move(to: CGPoint(x: 200, y: bounds.height / 2))
        rulerLine.addLine(to: CGPoint(x: bounds.width - 200, y: bounds.height / 2))
        compassLine.addArc(withCenter: CGPoint(x: 200, y: bounds.height / 2), radius: bounds.width - 400, startAngle: -(CGFloat.pi / 2), endAngle: CGFloat.pi / 2, clockwise: true)
        compassLine.move(to: CGPoint(x: bounds.width - 200, y: bounds.height / 2 + bounds.width - 400))
        compassLine.addArc(withCenter: CGPoint(x: bounds.width - 200, y: bounds.height / 2), radius: bounds.width - 400, startAngle: CGFloat.pi / 2, endAngle: -(CGFloat.pi / 2), clockwise: true)
        compassLine.stroke()
        rulerLine.move(to: CGPoint(x: bounds.width / 2, y: 50))
        rulerLine.addLine(to: CGPoint(x: bounds.width / 2, y: bounds.height - 50))
        rulerLine.stroke()
    }
    
    func angleBisector() {
        let rulerLine = UIBezierPath()
        let compassLine = UIBezierPath()
        let compassLine1 = UIBezierPath()
        let compassLine2 = UIBezierPath()
        rulerLine.move(to: CGPoint(x: bounds.width - 200, y: bounds.height - 200))
        rulerLine.addLine(to: CGPoint(x: 200, y: bounds.height - 200))
        rulerLine.addLine(to: CGPoint(x: 200, y: 200))
        compassLine.addArc(withCenter: CGPoint(x: 200, y: bounds.height - 200), radius: 150, startAngle: CGFloat.pi * 1.48, endAngle: CGFloat.pi * 0.02, clockwise: true)
        compassLine1.addArc(withCenter: CGPoint(x: 350, y: bounds.height - 200), radius: 200, startAngle: CGFloat.pi * 1.45, endAngle: CGFloat.pi * 1.6, clockwise: true)
        compassLine2.addArc(withCenter: CGPoint(x: 200, y: bounds.height - 350), radius: 200, startAngle: CGFloat.pi * 1.9, endAngle: CGFloat.pi * 0.05, clockwise: true)
        rulerLine.move(to: CGPoint(x: bounds.width - 100, y: 100))
        rulerLine.addLine(to: CGPoint(x: 100, y: bounds.height - 100))
        rulerLine.stroke()
        compassLine.stroke()
        compassLine1.stroke()
        compassLine2.stroke()
    }
    
    func rightTriangleInSemiCircle() {
        let rulerLine = UIBezierPath()
        let compassLine = UIBezierPath()
        rulerLine.move(to: CGPoint(x: 150, y: bounds.height - 225))
        rulerLine.addLine(to: CGPoint(x: bounds.width - 150, y: bounds.height - 225))
        compassLine.addArc(withCenter: CGPoint(x: bounds.width / 2, y: bounds.height - 225), radius: bounds.width / 2 - 150, startAngle: CGFloat.pi, endAngle: 0, clockwise: true)
        rulerLine.move(to: CGPoint(x: 150, y: bounds.height - 225))
        rulerLine.addLine(to: CGPoint(x: bounds.width - 275, y: bounds.height - 420))
        rulerLine.addLine(to: CGPoint(x: bounds.width - 150, y: bounds.height - 225))
        rulerLine.move(to: CGPoint(x: bounds.width - 275, y: bounds.height - 420))
        rulerLine.addLine(to: CGPoint(x: bounds.width / 2, y: bounds.height - 225))
        "r".draw(in: CGRect(x: bounds.width * 21 / 40, y: bounds.height - 325, width: 50, height: 50))
        "r".draw(in: CGRect(x: bounds.width * 6 / 15, y: bounds.height - 250, width: 50, height: 50))
        "r".draw(in: CGRect(x: bounds.width * 5 / 8, y: bounds.height - 250, width: 50, height: 50))
        rulerLine.move(to: CGPoint(x: 225, y: bounds.height - 220))
        rulerLine.addLine(to: CGPoint(x: 225, y: bounds.height - 230))
        rulerLine.move(to: CGPoint(x: bounds.width - 250, y: bounds.height - 220))
        rulerLine.addLine(to: CGPoint(x: bounds.width - 250, y: bounds.height - 230))
        rulerLine.move(to: CGPoint(x: bounds.width * 22 / 40, y: bounds.height - 320))
        rulerLine.addLine(to: CGPoint(x: bounds.width * 91 / 160, y: bounds.height - 317))
        rulerLine.stroke()
        compassLine.stroke()
    }
    
    func threeLinesThatMakeATriangle() {
        let rulerLine = UIBezierPath()
        let compassLine = UIBezierPath()
        let compassLine1 = UIBezierPath()
        rulerLine.move(to: CGPoint(x: 50, y: 50))
        rulerLine.addLine(to: CGPoint(x: 356, y: 50))
        rulerLine.move(to: CGPoint(x: 50, y: 75))
        rulerLine.addLine(to: CGPoint(x: bounds.width - 350, y: 75))
        rulerLine.move(to: CGPoint(x: 50, y: 100))
        rulerLine.addLine(to: CGPoint(x: 393, y: 100))
        rulerLine.move(to: CGPoint(x: 200, y: bounds.height - 225))
        rulerLine.addLine(to: CGPoint(x: bounds.width - 200, y: bounds.height - 225))
        rulerLine.move(to: CGPoint(x: 200, y: bounds.height - 225))
        rulerLine.addLine(to: CGPoint(x: bounds.width * 11 / 20, y: 225))
        rulerLine.move(to: CGPoint(x: bounds.width * 11 / 20, y: 225))
        rulerLine.addLine(to: CGPoint(x: bounds.width - 200, y: bounds.height - 225))
        compassLine.addArc(withCenter: CGPoint(x: 200, y: bounds.height - 225), radius: 343, startAngle: CGFloat.pi * 1.675, endAngle: CGFloat.pi * 1.73, clockwise: true)
        compassLine1.addArc(withCenter: CGPoint(x: bounds.width - 200, y: bounds.height - 225), radius: 306 , startAngle: CGFloat.pi * 1.33, endAngle: CGFloat.pi * 1.39, clockwise: true)
        rulerLine.stroke()
        compassLine.stroke()
        compassLine1.stroke()
    }
}
