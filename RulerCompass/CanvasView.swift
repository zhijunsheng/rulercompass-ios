//
//  LineSegmentBisecterView.swift
//  RulerCompass
//
//  Created by Andy Yan on 2020-03-31.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    var problemIndex = 0
    
    override func draw(_ rect: CGRect) {
        if problemIndex == 1 {
            drawAngle()
        }
        
        if problemIndex == 2 {
            drawTriangleFrom3GivenLineSegments()
        }
        
        if problemIndex == 3 {
            drawLineSegment()
        }
        
        if problemIndex == 4 {
            makePerpendicularLine1()
        }
        
        if problemIndex == 5 {
            makePerpendicularLine2()
        }
        
        if problemIndex == 6 {
            drawParallelLines()
        }
    }
    
    func drawTriangleFrom3GivenLineSegments() {
        let straightlines = UIBezierPath()
                
        straightlines.move(to: CGPoint(x: 100, y: 100))
        straightlines.addLine(to: CGPoint(x: 212, y: 100))
        
        straightlines.move(to: CGPoint(x: 100, y: 150))
        straightlines.addLine(to: CGPoint(x: 250, y: 150))
        
        straightlines.move(to: CGPoint(x: 100, y: 200))
        straightlines.addLine(to: CGPoint(x: 300, y: 200))
        
        straightlines.move(to: CGPoint(x: 400, y: 400))
        straightlines.addLine(to: CGPoint(x: 600, y: 400))
        
        let arc1 = UIBezierPath(arcCenter: CGPoint(x: 400, y: 400), radius: 112, startAngle: CGFloat.pi * 1.6, endAngle: CGFloat.pi * 1.9, clockwise: true)

        let arc2 = UIBezierPath(arcCenter: CGPoint(x: 600, y: 400), radius: 150, startAngle: CGFloat.pi * 1.3, endAngle: CGFloat.pi * 1.11, clockwise: false)
            arc1.stroke()
            arc2.stroke()

        straightlines.move(to: CGPoint(x: 400, y: 400))
        straightlines.addLine(to: CGPoint(x: 475, y: 315))
        
        straightlines.move(to: CGPoint(x: 475, y: 316))
        straightlines.addLine(to: CGPoint(x: 600, y: 400))
        
        straightlines.stroke()
    }
    
    func drawAngle() {
        
        let angles = UIBezierPath()

        angles.move(to: CGPoint(x: 300, y: 400))
        angles.addLine(to: CGPoint(x: 400, y: 200))

        angles.move(to: CGPoint(x: 300, y: 400))
        angles.addLine(to: CGPoint(x: 500, y: 400))

        angles.lineWidth = 3
        angles.stroke()
        
        let arc = UIBezierPath(arcCenter: CGPoint(x: 300, y: 400), radius: 150, startAngle: CGFloat.pi * 0.25, endAngle: -CGFloat.pi *  0.5, clockwise: false)
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        arc.stroke()

        let arc2 = UIBezierPath(arcCenter: CGPoint(x: 450, y: 400), radius: 150, startAngle: CGFloat.pi * 1.75, endAngle: CGFloat.pi * 1.6, clockwise: false)
        arc2.stroke()
        
        let arc3 = UIBezierPath(arcCenter: CGPoint(x: 375, y: 275), radius: 150, startAngle: CGFloat.pi * 1.9, endAngle: CGFloat.pi * 0.06, clockwise: true)
        arc3.stroke()
               
        let bisector = UIBezierPath()
        
        bisector.move(to: CGPoint(x: 300, y: 400))
        bisector.addLine(to: CGPoint(x: 550, y: 255))
        bisector.lineWidth = 3
        #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1).setStroke()
        bisector.stroke()
    }
   
    func drawCrossHair(x: CGFloat, y: CGFloat) {
                
        let crosshair = UIBezierPath()
        crosshair.move(to: CGPoint(x: x, y: y - 50))
        crosshair.addLine(to: CGPoint(x: x, y: y + 50))

        crosshair.move(to: CGPoint(x: x - 50, y: y))
        crosshair.addLine(to: CGPoint(x: x + 50, y: y))

        #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1).setStroke()

        crosshair.stroke()
    }
    
    func drawLineSegment() {
         let lineSegmentPath = UIBezierPath()
        lineSegmentPath.move(to: CGPoint(x: 200, y: 400))
        lineSegmentPath.addLine(to: CGPoint(x: 500, y: 400))

        lineSegmentPath.move(to: CGPoint(x: 200, y: 375))
        lineSegmentPath.addLine(to: CGPoint(x: 200, y: 425))

        lineSegmentPath.move(to: CGPoint(x: 500, y: 375))
        lineSegmentPath.addLine(to: CGPoint(x: 500, y: 425))

        lineSegmentPath.lineWidth = 3

        lineSegmentPath.stroke()
        
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 350, y: 200))
        pencil.addLine(to: CGPoint(x: 350, y: 600))
        pencil.stroke()
        
        let compassArc1 = UIBezierPath(arcCenter: CGPoint(x: 200, y: 400), radius: 200, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi / 2, clockwise: true)
        #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1).setStroke()
        compassArc1.stroke()

        let comapssArc2 = UIBezierPath(arcCenter: CGPoint(x: 500, y: 400), radius: 200, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi / 2, clockwise: false)
        #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1).setStroke()
        comapssArc2.stroke()        
    }
    
    func makePerpendicularLine1() {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 200, y: 300))
        pencil.addLine(to: CGPoint(x: 600, y: 300))
        
        pencil.move(to: CGPoint(x: 413.5, y: 290))
        pencil.addLine(to: CGPoint(x: 413.5, y: 310))
        
        let pencil2 = UIBezierPath(arcCenter: CGPoint(x: 413.5, y: 300), radius: 137.5, startAngle: CGFloat.pi * 1.5, endAngle: CGFloat.pi * 3.5, clockwise: true)
        pencil2.stroke()
        
        let pencil3 = UIBezierPath(arcCenter: CGPoint(x: 275, y: 300), radius: 150, startAngle: CGFloat.pi * 1.6, endAngle: CGFloat.pi * 0.25, clockwise: true)
        pencil3.stroke()

        let pencil4 = UIBezierPath(arcCenter: CGPoint(x: 550, y: 300), radius: 150, startAngle: CGFloat.pi * 1.4, endAngle: CGFloat.pi * 0.7, clockwise: false)
        #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1).setStroke()
        pencil4.stroke()
        
        pencil.move(to: CGPoint(x: 412, y: 150))
        pencil.addLine(to: CGPoint(x: 412, y: 500))
        
        pencil.stroke()
    }
    
    func makePerpendicularLine2() {
    
        let circle = UIBezierPath(arcCenter: CGPoint(x: 300, y: 275), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        circle.fill()
        
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 100, y: 350))
        pencil.addLine(to: CGPoint(x: 500, y: 350))
        pencil.stroke()
        
        let compassPoint1 = UIBezierPath(arcCenter: CGPoint(x: 225, y: 350), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1).setFill()
        compassPoint1.fill()
        
        let compassPoint2 = UIBezierPath(arcCenter: CGPoint(x: 400, y: 350), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1).setFill()
        compassPoint2.fill()
        
        let arc1 = UIBezierPath(arcCenter: CGPoint(x: 225, y: 350), radius: 107, startAngle: CGFloat.pi * 1.6, endAngle: CGFloat.pi * 0.4, clockwise: true)
        arc1.stroke()

        let arc2 = UIBezierPath(arcCenter: CGPoint(x: 400, y: 350), radius: 125, startAngle: CGFloat.pi * 1.4, endAngle: CGFloat.pi * 0.6, clockwise: false)
        arc2.stroke()

        pencil.move(to: CGPoint(x: 300, y: 200))
        pencil.addLine(to: CGPoint(x: 300, y: 500))
        pencil.stroke()
        
    }
    
    func drawParallelLines() {
        let pencil = UIBezierPath()
        
        //horizontal line1
        pencil.move(to: CGPoint(x: 100, y: 400))
        pencil.addLine(to: CGPoint(x: 700, y: 400))

        //draw the x
        pencil.move(to: CGPoint(x: 320, y: 250))
        pencil.addLine(to: CGPoint(x: 380, y: 300))

        pencil.move(to: CGPoint(x: 380, y: 250))
        pencil.addLine(to: CGPoint(x: 330, y: 300))

        pencil.lineWidth = 3
        pencil.stroke()

        //compass point 1
        let pencil1 = UIBezierPath(arcCenter: CGPoint(x: 280, y: 400), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1).setFill()
        pencil1.fill()

        //compass point 2
        let pencil2 = UIBezierPath(arcCenter: CGPoint(x: 425, y: 400), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1).setFill()
        pencil2.fill()

        //arc 1
        let pencil4 = UIBezierPath(arcCenter: CGPoint(x: 280, y: 400), radius: 142.5, startAngle: CGFloat.pi * 1.6, endAngle: CGFloat.pi * 1.8, clockwise: true)
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        pencil4.stroke()

        //arc 2
        let pencil5 = UIBezierPath(arcCenter: CGPoint(x: 425, y: 400), radius: 142.5, startAngle: CGFloat.pi * 1.4, endAngle: CGFloat.pi * 1.2, clockwise: false)
        pencil5.stroke()

        //arc 3
        let pencil6 = UIBezierPath(arcCenter: CGPoint(x: 280, y: 400), radius: 142.5, startAngle: CGFloat.pi * 0.2, endAngle: CGFloat.pi * 0.4, clockwise: true)
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        pencil6.stroke()

        //arc 4
        let pencil7 = UIBezierPath(arcCenter: CGPoint(x: 425, y: 400), radius: 142.5, startAngle: CGFloat.pi * 0.8, endAngle: CGFloat.pi * 0.6, clockwise: false)
        pencil7.stroke()

        //vertical line
        let pencil8 = UIBezierPath()
        pencil8.move(to: CGPoint(x: 352.5, y: 200))
        pencil8.addLine(to: CGPoint(x: 352.5, y: 700))
        #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1).setStroke()
        pencil8.stroke()
        
        //compass point 3
        let pencil3 = UIBezierPath(arcCenter: CGPoint(x: 550, y: 400), radius: 5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1).setFill()
        pencil3.fill()
        
        //arc5
        let pencil9 = UIBezierPath(arcCenter: CGPoint(x: 550, y: 400), radius: 123, startAngle: CGFloat.pi * 1.4, endAngle: CGFloat.pi * 1.6, clockwise: true)
        pencil9.stroke()

        //arc6
        let pencil10 = UIBezierPath(arcCenter: CGPoint(x: 352.5, y: 277), radius: 197.5, startAngle: CGFloat.pi * 1.9, endAngle: CGFloat.pi * 0.1, clockwise: true)
        pencil10.stroke()

        //horizontal line2
        let pencil11 = UIBezierPath()

        pencil11.move(to: CGPoint(x: 100, y: 277))
        pencil11.addLine(to: CGPoint(x: 700, y: 277))
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        pencil11.lineWidth = 3
        pencil11.stroke()
    }
}
