//
//  CanvasView.swift
//  RulerCompass
//
//  Created by Grace Huang on 4/2/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    
    var flag: GeometricProblem = GeometricProblem.linePointBisector
    
    override func draw(_ rect: CGRect) {
        switch flag {
        case .lineBisector:
            drawLineSegmentBisector()
        case .angleBisector:
            drawAngleBisector()
        case .coordinatePlane:
            drawCoordinatePlane()
        case .triangleGivenSides:
            drawTriangleGivenSides()
        case .linePointBisector:
            drawLinePointBisector()
        }
    }
    
    func drawLinePointBisector() {
        let ruler = UIBezierPath()
        let compass = UIBezierPath()
        let answer = UIBezierPath()
        let points = UIBezierPath()
        ruler.move(to: CGPoint(x: 120, y: 400))
        ruler.addLine(to: CGPoint(x: 600, y: 400))
        
        ruler.move(to: CGPoint(x: 350, y: 390))
        ruler.addLine(to: CGPoint(x: 370, y: 410))
        
        ruler.move(to: CGPoint(x: 370, y: 390))
        ruler.addLine(to: CGPoint(x: 350, y: 410))
        
        ruler.lineWidth = 3
        ruler.stroke()

        points.addArc(withCenter: CGPoint(x: 360, y: 400), radius: 120, startAngle: -0.1 * CGFloat.pi, endAngle: 1.1 * CGFloat.pi, clockwise: true)
        
        points.stroke()
        
        compass.addArc(withCenter: CGPoint(x: 240, y: 400), radius: 300, startAngle: -0.3 * CGFloat.pi, endAngle: -0.4 * CGFloat.pi, clockwise: false)

        compass.move(to: CGPoint(x: 388, y: 116))
        compass.addArc(withCenter: CGPoint(x: 480, y: 400), radius: 300, startAngle: -0.6 * CGFloat.pi, endAngle: -0.7 * CGFloat.pi, clockwise: false)

        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        compass.stroke()

        answer.move(to: CGPoint(x: 360, y: 110))
        answer.addLine(to: CGPoint(x: 360, y: 420))

        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setStroke()
        answer.lineWidth = 2
        answer.stroke()
    }
    
    func drawTriangleGivenSides() {
        let ruler = UIBezierPath()
        let compass = UIBezierPath()
        // line 1 150, line 2 225, line 3 300
        ruler.move(to: CGPoint(x: 60, y: 45))
        ruler.addLine(to: CGPoint(x: 210, y: 45))
        
        ruler.move(to: CGPoint(x: 60, y: 90))
        ruler.addLine(to: CGPoint(x: 285, y: 90))
        
        ruler.move(to: CGPoint(x: 60, y: 135))
        ruler.addLine(to: CGPoint(x: 360, y: 135))
        
        ruler.lineWidth = 3
        ruler.stroke()
        
        // point 1
        ruler.move(to: CGPoint(x: 210, y: 480))
        ruler.addLine(to: CGPoint(x: 210, y: 490))
        ruler.move(to: CGPoint(x: 205, y: 485))
        ruler.addLine(to: CGPoint(x: 215, y: 485))
        
        ruler.lineWidth = 1.5
        ruler.stroke()
        
        
        compass.addArc(withCenter: CGPoint(x: 210, y: 485), radius: 300, startAngle: 0.1 * CGFloat.pi, endAngle: -0.1 * CGFloat.pi, clockwise: false)
        
        // point 2
        ruler.move(to: CGPoint(x: 510, y: 480))
        ruler.addLine(to: CGPoint(x: 510, y: 490))
        ruler.move(to: CGPoint(x: 505, y: 485))
        ruler.addLine(to: CGPoint(x: 515, y: 485))
        
        ruler.stroke()
        
        compass.move(to: CGPoint(x: 380, y: 304))
        compass.addArc(withCenter: CGPoint(x: 510, y: 485), radius: 225, startAngle: -0.7 * CGFloat.pi, endAngle: -0.9 * CGFloat.pi, clockwise: false)
        
        compass.move(to: CGPoint(x: 345, y: 410))
        compass.addArc(withCenter: CGPoint(x: 210, y: 480), radius: 150, startAngle: -0.15 * CGFloat.pi, endAngle: -0.35 * CGFloat.pi, clockwise: false)
        
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setStroke()
        compass.stroke()
        
        // point 3
//        drawCross(x: 315, y: 372)
        ruler.move(to: CGPoint(x: 315, y: 367))
        ruler.addLine(to: CGPoint(x: 315, y: 377))
        ruler.move(to: CGPoint(x: 310, y: 372))
        ruler.addLine(to: CGPoint(x: 320, y: 372))
        
        ruler.move(to: CGPoint(x: 210, y: 485))
        ruler.addLine(to: CGPoint(x: 510, y: 485))
        ruler.addLine(to: CGPoint(x: 315, y: 372))
        ruler.addLine(to: CGPoint(x: 210, y: 485))

        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        ruler.stroke()
    }
    
    
    func drawCoordinatePlane() {
        let ruler = UIBezierPath()

        ruler.move(to: CGPoint(x: 350, y: 0))
        ruler.addLine(to: CGPoint(x: 350, y: 700))
        
        ruler.move(to: CGPoint(x: 0, y: 350))
        ruler.addLine(to: CGPoint(x: 700, y: 350))

        ruler.lineWidth = 3
        ruler.stroke()
        
        
        for i in 0..<35 {
            ruler.move(to: CGPoint(x: 20 * i + 10, y: 0))
            ruler.addLine(to: CGPoint(x: 20 * i + 10, y: 700))
            
            ruler.move(to: CGPoint(x: 0, y: 20 * i + 10))
            ruler.addLine(to: CGPoint(x: 700, y: 20 * i + 10))

            
            ruler.lineWidth = 0.05
            ruler.stroke()
        }
    }
    
    func drawCross(x: CGFloat, y: CGFloat) {
        let ruler = UIBezierPath()
        ruler.move(to: CGPoint(x: x, y: y - 75))
        ruler.addLine(to: CGPoint(x: x, y: y + 75))
        ruler.move(to: CGPoint(x: x - 75, y: y))
        ruler.addLine(to: CGPoint(x: x + 75, y: y))
        
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setStroke()
        ruler.stroke()
    }
    
    func drawAngleBisector() {
        let ruler = UIBezierPath()
        let compass = UIBezierPath()
        
        ruler.move(to: CGPoint(x: 118, y: 400))
        ruler.addLine(to: CGPoint(x: 500, y: 400))
        
        ruler.move(to: CGPoint(x: 118, y: 400))
        ruler.addLine(to: CGPoint(x: 450, y: 200))

        ruler.lineWidth = 3
        ruler.stroke()
        
        compass.addArc(withCenter: CGPoint(x: 118, y: 400), radius: 250, startAngle: 0.05 * CGFloat.pi, endAngle: -0.05 * CGFloat.pi, clockwise: false)
        
        compass.move(to: CGPoint(x: 347, y: 302))
        compass.addArc(withCenter: CGPoint(x: 118, y: 400), radius: 250, startAngle: -0.15 * CGFloat.pi, endAngle: -0.2 * CGFloat.pi, clockwise: false)
        
        
        compass.move(to: CGPoint(x: 560, y: 340))
        compass.addArc(withCenter: CGPoint(x: 368, y: 400), radius: 200, startAngle: -0.1 * CGFloat.pi, endAngle: -0.25 * CGFloat.pi, clockwise: false)
        
        compass.move(to: CGPoint(x: 528, y: 244))
        compass.addArc(withCenter: CGPoint(x: 333, y: 272), radius: 200, startAngle: -0.05 * CGFloat.pi, endAngle: 0.1 * CGFloat.pi, clockwise: true)
        
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        compass.stroke()
        
        ruler.move(to: CGPoint(x: 118, y: 400))
        ruler.addLine(to: CGPoint(x: 532, y: 287))
        
        #colorLiteral(red: 0.1037014052, green: 0.04392455518, blue: 0.04877308756, alpha: 1).setStroke()
        ruler.lineWidth = 2
        ruler.stroke()
    }
    
    func drawLineSegmentBisector() {
        let ruler = UIBezierPath()
        let compass = UIBezierPath()
        
        ruler.move(to: CGPoint(x: 118, y: 400))
        ruler.addLine(to: CGPoint(x: 400, y: 400))
    
        ruler.move(to: CGPoint(x: 118, y: 390))
        ruler.addLine(to: CGPoint(x: 118, y: 410))
        ruler.move(to: CGPoint(x: 400, y: 390))
        ruler.addLine(to: CGPoint(x: 400, y: 410))
        
        ruler.lineWidth = 3
        ruler.stroke()
        
        compass.addArc(withCenter: CGPoint(x: 118, y: 400), radius: 200, startAngle: 1.5 * CGFloat.pi, endAngle: 2.5 * CGFloat.pi, clockwise: true)
        
        compass.move(to: CGPoint(x: 400, y: 600))
        compass.addArc(withCenter: CGPoint(x: 400, y: 400), radius: 200, startAngle: 0.5 * CGFloat.pi, endAngle: 1.5 * CGFloat.pi, clockwise: true)
        
        #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1).setStroke()
        compass.stroke()
        
        ruler.move(to: CGPoint(x: 260, y: 200))
        ruler.addLine(to: CGPoint(x: 260, y: 610))
        
        ruler.lineWidth = 2
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        
        ruler.stroke()
    }
}
