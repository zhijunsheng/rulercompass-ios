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
//        perpendicular2()
//        parallel()
//        regularTriangle()
//        triangle()
//        circleThroughTwoPoints()
//        circleThroughThreePoints()
//        pythagoreanTriples()
        squareRootOfTwo()
    }
    
    func squareRootOfTwo() {
        horizontalLineSegment(fromX: 100, toX: 250, y: 100)
        "1".draw(in: CGRect(x: 175, y: 80, width: 20, height: 20))
        perpendicular()
        
        UIColor.lightGray.setStroke()
        UIBezierPath(arcCenter: CGPoint(x: 400, y: 350), radius: 150, startAngle: -1.1 * CGFloat.pi, endAngle: -0.4 * CGFloat.pi, clockwise: true).stroke()
        
        let solution = UIBezierPath()
        solution.move(to: CGPoint(x: 400, y: 200))
        solution.addLine(to: CGPoint(x: 250, y: 350))
        UIColor.red.setStroke()
        solution.lineWidth = 3
        solution.stroke()
        
        "√2".draw(in: CGRect(x: 310, y: 260, width: 20, height: 20))
        "1".draw(in: CGRect(x: 410, y: 270, width: 20, height: 20))
        "1".draw(in: CGRect(x: 320, y: 360, width: 20, height: 20))
    }
    
    func pythagoreanTriples() {
        for i in 0..<3 {
            horizontalLineSegment(fromX: 100 + 50 * CGFloat(i), toX: 150 + 50 * CGFloat(i), y: 100)
        }
        
        for i in 0..<4 {
            horizontalLineSegment(fromX: 100 + 50 * CGFloat(i), toX: 150 + 50 * CGFloat(i), y: 150)
        }
        
        for i in 0..<5 {
            horizontalLineSegment(fromX: 100 + 50 * CGFloat(i), toX: 150 + 50 * CGFloat(i), y: 200)
        }
        
        let triangle = UIBezierPath()
        triangle.move(to: CGPoint(x: 300, y: 600))
        triangle.addLine(to: CGPoint(x: 500, y: 600))
        triangle.addLine(to: CGPoint(x: 300, y: 450))
        triangle.close()
        UIColor.red.setStroke()
        triangle.stroke()
        
        UIColor.lightGray.setStroke()
        UIBezierPath(arcCenter: CGPoint(x: 300, y: 600), radius: 150, startAngle: -0.6 * CGFloat.pi, endAngle: -0.4 * CGFloat.pi, clockwise: true).stroke()
        UIBezierPath(arcCenter: CGPoint(x: 500, y: 600), radius: 250, startAngle: -0.9 * CGFloat.pi, endAngle: -0.7 * CGFloat.pi, clockwise: true).stroke()
    }
    
    func circleThroughThreePoints() {
        drawPointAt(x: 200, y: 200)
        drawPointAt(x: 400, y: 200)
        drawPointAt(x: 500, y: 300)
        
        UIColor.brown.setStroke()
        UIBezierPath(arcCenter: CGPoint(x: 200, y: 200), radius: 150, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true).stroke()
        UIBezierPath(arcCenter: CGPoint(x: 400, y: 200), radius: 150, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: false).stroke()
        
        let line1 = UIBezierPath()
        line1.move(to: CGPoint(x: 300, y: 50))
        line1.addLine(to: CGPoint(x: 300, y: 500))
        UIColor.blue.setStroke()
        line1.stroke()
        
        UIColor.purple.setStroke()
        UIBezierPath(arcCenter: CGPoint(x: 400, y: 200), radius: 90, startAngle: -0.25 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true).stroke()
        UIBezierPath(arcCenter: CGPoint(x: 500, y: 300), radius: 90, startAngle: -0.25 * CGFloat.pi, endAngle: 0.9 * CGFloat.pi, clockwise: false).stroke()
        
        let line2 = UIBezierPath()
        line2.move(to: CGPoint(x: 500, y: 200))
        line2.addLine(to: CGPoint(x: 200, y: 500))
        UIColor.green.setStroke()
        line2.stroke()
        
        let radius: CGFloat = sqrt(200 * 200 + 100 * 100)
        UIColor.red.setStroke()
        UIBezierPath(arcCenter: CGPoint(x: 300, y: 400), radius: radius, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).stroke()
    }
    
    func circleThroughTwoPoints() {
        drawPointAt(x: 200, y: 500)
        drawPointAt(x: 500, y: 500)
        
        let compassPath1 = UIBezierPath()
        compassPath1.addArc(withCenter: CGPoint(x: 200, y: 500), radius: 250, startAngle: -0.5 * CGFloat.pi, endAngle: -0.25 * CGFloat.pi, clockwise: true)
        UIColor.brown.setStroke()
        compassPath1.stroke()
        
        let compassPath2 = UIBezierPath()
        compassPath2.addArc(withCenter: CGPoint(x: 500, y: 500), radius: 250, startAngle: -0.5 * CGFloat.pi, endAngle: -0.75 * CGFloat.pi, clockwise: false)
        UIColor.brown.setStroke()
        compassPath2.stroke()
        
        let circleCenterY: CGFloat = 500 - sqrt(250 * 250 - 150 * 150)
        let circle = UIBezierPath()
        circle.addArc(withCenter: CGPoint(x: 350, y: circleCenterY), radius: 250, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        UIColor.red.setStroke()
        circle.stroke()
    }
    
    func drawPointAt(x: CGFloat, y: CGFloat) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: x - 5, y: y - 5))
        path.addLine(to: CGPoint(x: x + 5, y: y + 5))
        path.move(to: CGPoint(x: x - 5, y: y + 5))
        path.addLine(to: CGPoint(x: x + 5, y: y - 5))
        path.stroke()
    }
    
    func triangle() {
        horizontalLineSegment(fromX: 100, toX: 300, y: 100)
        horizontalLineSegment(fromX: 100, toX: 350, y: 150)
        horizontalLineSegment(fromX: 100, toX: 400, y: 200)
        
        let trianglePath = UIBezierPath()
        trianglePath.move(to: CGPoint(x: 200, y: 600))
        trianglePath.addLine(to: CGPoint(x: 500, y: 600))
        
        let compassPath = UIBezierPath()
        compassPath.addArc(withCenter: CGPoint(x: 200, y: 600), radius: 200, startAngle: -0.5 * CGFloat.pi, endAngle: -0.25 * CGFloat.pi, clockwise: true)
        
        compassPath.move(to: CGPoint(x: 500, y: 350))

        compassPath.addArc(withCenter: CGPoint(x: 500, y: 600), radius: 250, startAngle: -0.5 * CGFloat.pi, endAngle: -0.9 * CGFloat.pi, clockwise: false)
        
        UIColor.green.setStroke()
        compassPath.stroke()
        
        let a: Double = 250
        let b: Double = 200
        let c: Double = 300
        let cosLeftAngle = (b * b + c * c - a * a) / (2 * b * c)
        let leftAngle = acos(cosLeftAngle)
        let triangleHeight = CGFloat(b * sin(leftAngle))
        let x = 200 + CGFloat(b * cosLeftAngle)
        trianglePath.addLine(to: CGPoint(x: x, y: 600 - triangleHeight))
        trianglePath.close()
        
        UIColor.red.setStroke()
        trianglePath.stroke()
    }
    
    func horizontalLineSegment(fromX: CGFloat, toX: CGFloat, y: CGFloat) {
        let lineSegmentPath = UIBezierPath()
        
        lineSegmentPath.move(to: CGPoint(x: fromX, y: y))
        lineSegmentPath.addLine(to: CGPoint(x: toX, y: y))
        
        lineSegmentPath.move(to: CGPoint(x: fromX, y: y - 10))
        lineSegmentPath.addLine(to: CGPoint(x: fromX, y: y + 10))
        
        lineSegmentPath.move(to: CGPoint(x: toX, y: y - 10))
        lineSegmentPath.addLine(to: CGPoint(x: toX, y: y + 10))
        
        lineSegmentPath.stroke()
    }
    
    func regularTriangle() {
        let lineSegmentPath = UIBezierPath()
        
        lineSegmentPath.move(to: CGPoint(x: 100, y: 100))
        lineSegmentPath.addLine(to: CGPoint(x: 300, y: 100))
        
        lineSegmentPath.move(to: CGPoint(x: 100, y: 100 - 10))
        lineSegmentPath.addLine(to: CGPoint(x: 100, y: 100 + 10))
        
        lineSegmentPath.move(to: CGPoint(x: 300, y: 100 - 10))
        lineSegmentPath.addLine(to: CGPoint(x: 300, y: 100 + 10))
        
        lineSegmentPath.stroke()
        
        let trianglePath = UIBezierPath()
        trianglePath.move(to: CGPoint(x: 250, y: 500))
        trianglePath.addLine(to: CGPoint(x: 250 + 200, y: 500))

        
        let compassPath = UIBezierPath()
        compassPath.addArc(withCenter: CGPoint(x: 250, y: 500), radius: 200, startAngle: -0.5 * CGFloat.pi, endAngle: -0.25 * CGFloat.pi, clockwise: true)
        
        compassPath.move(to: CGPoint(x: 450, y: 300))
        
        compassPath.addArc(withCenter: CGPoint(x: 450, y: 500), radius: 200, startAngle: -0.5 * CGFloat.pi, endAngle: -0.75 * CGFloat.pi, clockwise: false)
        UIColor.green.setStroke()
        
        compassPath.stroke()
        
        trianglePath.addLine(to: CGPoint(x: (250 + 450)/2, y: 500 - 200 * sqrt(3)/2))
        trianglePath.close()
        
        UIColor.red.setStroke()
        trianglePath.stroke()
    }
    
    func parallel() {
        perpendicular2()
        
        let compassPath1 = UIBezierPath()
        compassPath1.addArc(withCenter: CGPoint(x: 400, y: 200), radius: 100, startAngle: -0.6 * CGFloat.pi, endAngle: -0.4 * CGFloat.pi, clockwise: true)
        UIColor.blue.setStroke()
        compassPath1.stroke()
        
        let compassPath2 = UIBezierPath()
        compassPath2.addArc(withCenter: CGPoint(x: 400, y: 200), radius: 100, startAngle: 0.4 * CGFloat.pi, endAngle: 0.6 * CGFloat.pi, clockwise: true)
        UIColor.blue.setStroke()
        compassPath2.stroke()
        
        let compassPath3 = UIBezierPath()
        compassPath3.addArc(withCenter: CGPoint(x: 400, y: 100), radius: 300, startAngle: 0.8 * CGFloat.pi, endAngle: CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        compassPath3.stroke()
        
        let compassPath4 = UIBezierPath()
        compassPath4.addArc(withCenter: CGPoint(x: 400, y: 300), radius: 300, startAngle: 1.0 * CGFloat.pi, endAngle: 1.2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        compassPath4.stroke()
        
        let parallelPath = UIBezierPath()
        parallelPath.move(to: CGPoint(x: 50, y: 200))
        parallelPath.addLine(to: CGPoint(x: 700, y: 200))
        parallelPath.lineWidth = 3
        #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).setStroke()
        parallelPath.stroke()
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
