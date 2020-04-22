//
//  CanvasView.swift
//  RulerCompass
//
//  Created by Angie Yan on 2020-04-01.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    var flag = 7
    
    override func draw(_ rect: CGRect) {
        if flag == 1 {
            drawAngleBisector()
        } else if flag == 2 {
            drawLineBisector()
        } else if flag == 3 {
            drawTriangle()
        } else if flag == 4 {
            drawPerpendicular()
        } else if flag == 5 {
            drawPerpendicular2()
        } else if flag == 6 {
            drawCircleThroughPoints()
        } else if flag == 7 {
            drawParallel()
        }
    }
    
    func drawParallel() {
        let point = UIBezierPath(arcCenter: CGPoint(x: 300, y: 300), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        point.fill()
        
        let line1 = UIBezierPath()
        line1.move(to: CGPoint(x: 100, y: 400))
        line1.addLine(to: CGPoint(x: 550, y: 400))
        line1.lineWidth = 2
        line1.stroke()
        
        let cutoff = UIBezierPath(arcCenter: CGPoint(x: 300, y: 300), radius: 190, startAngle: CGFloat.pi * 0.9, endAngle: CGFloat.pi * 0.1, clockwise: false)
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setStroke()
        cutoff.stroke()
        
        let arc = UIBezierPath(arcCenter: CGPoint(x: 463, y: 400), radius: 300, startAngle: CGFloat.pi * 0.9, endAngle: CGFloat.pi * 0.6, clockwise: false)
        #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setStroke()
        arc.stroke()
        
        let arc1 = UIBezierPath(arcCenter: CGPoint(x: 137, y: 400), radius: 300, startAngle: CGFloat.pi * 0.2, endAngle: CGFloat.pi * 0.5, clockwise: true)
        arc1.stroke()

        let length = UIBezierPath()
        length.move(to: CGPoint(x: 300, y: 210))
        length.addLine(to: CGPoint(x: 300, y: 700))
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        length.stroke()
        
        let arc2 = UIBezierPath(arcCenter: CGPoint(x: 463, y: 400), radius: 160, startAngle: -CGFloat.pi * 0.5, endAngle: CGFloat.pi * 1.2, clockwise: false)
        #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1).setStroke()
        arc2.stroke()
        
        let arc3 = UIBezierPath(arcCenter: CGPoint(x: 300, y: 400), radius: 160, startAngle: -CGFloat.pi * 0.4, endAngle: -CGFloat.pi * 0.2, clockwise: true)
        arc3.stroke()
        
        let arc4 = UIBezierPath(arcCenter: CGPoint(x: 463, y: 400), radius: 160, startAngle: CGFloat.pi * 0.8, endAngle: CGFloat.pi * 0.5, clockwise: false)
        arc4.stroke()
        
        let arc5 = UIBezierPath(arcCenter: CGPoint(x: 300, y: 400), radius: 160, startAngle: CGFloat.pi * 0.2, endAngle: CGFloat.pi * 0.5, clockwise: true)
        arc5.stroke()
        
        let cutoff1 = UIBezierPath()
        cutoff1.move(to: CGPoint(x: 383, y: 200))
        cutoff1.addLine(to: CGPoint(x: 383, y: 600))
        #colorLiteral(red: 1, green: 0.8092852235, blue: 0, alpha: 1).setStroke()
        cutoff1.stroke()
        
        let dot = UIBezierPath(arcCenter: CGPoint(x: 383, y: 300), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        dot.fill()
        
        let parallel = UIBezierPath()
        parallel.move(to: CGPoint(x: 100, y: 300))
        parallel.addLine(to: CGPoint(x: 500, y: 300))
        parallel.lineWidth = 3
        #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).setStroke()
        parallel.stroke()
    }

    func drawCircleThroughPoints() {
        let point1 = UIBezierPath(arcCenter: CGPoint(x: 500, y: 400), radius: 8, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        point1.fill()
        
        let point2 = UIBezierPath(arcCenter: CGPoint(x: 300, y: 400), radius: 8, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        point2.fill()
        
        let arc = UIBezierPath(arcCenter: CGPoint(x: 500, y: 400), radius: 150, startAngle: -CGFloat.pi * 0.5, endAngle: CGFloat.pi * 1.1, clockwise: false)
        arc.stroke()
        
        let arc1 = UIBezierPath(arcCenter: CGPoint(x: 300, y: 400), radius: 150, startAngle: -CGFloat.pi * 0.5, endAngle: -CGFloat.pi * 0.1, clockwise: true)
        arc1.stroke()
        
        let circle = UIBezierPath(arcCenter: CGPoint(x: 400, y: 288), radius: 150, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1).setStroke()
        circle.stroke()
        
    }
    
    
    func drawPerpendicular2() {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 0, y: 400))
        line.addLine(to: CGPoint(x: bounds.width, y: 400))
        line.lineWidth = 3
        line.stroke()
        
        // first dot
        let dot = UIBezierPath(arcCenter: CGPoint(x: 300, y: 300), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        dot.fill()
        
        let bar = UIBezierPath()
        bar.move(to: CGPoint(x: 170, y: 370))
        bar.addLine(to: CGPoint(x: 170, y: 430))
        
        bar.move(to: CGPoint(x: 500, y: 370))
        bar.addLine(to: CGPoint(x: 500, y: 430))
        bar.lineWidth = 2
        bar.stroke()
        
        let arc = UIBezierPath(arcCenter: CGPoint(x: 170, y: 400), radius: 164, startAngle: -CGFloat.pi * 0.4, endAngle: -CGFloat.pi * 0.1, clockwise: true)
        arc.stroke()
        
        let arc1 = UIBezierPath(arcCenter: CGPoint(x: 500, y: 400), radius: 223, startAngle: CGFloat.pi * 1.06, endAngle: -CGFloat.pi * 0.7, clockwise: true)
        arc1.stroke()
        
        let arc2 = UIBezierPath(arcCenter: CGPoint(x: 170, y: 400), radius: 164, startAngle: CGFloat.pi * 0.1, endAngle: CGFloat.pi * 0.4, clockwise: true)
        arc2.stroke()
        
        let arc3 = UIBezierPath(arcCenter: CGPoint(x: 500, y: 400), radius: 223, startAngle: CGFloat.pi * 0.93, endAngle: CGFloat.pi * 0.7, clockwise: false)
        arc3.stroke()
        
        let bisector = UIBezierPath()
        bisector.move(to: CGPoint(x: 300, y: 200))
        bisector.addLine(to: CGPoint(x: 300, y: 600))
        #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1).setStroke()
        bisector.stroke()
    }
    
    func drawPerpendicular() {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 300, y: 400))
        line.addLine(to: CGPoint(x: 590, y: 400))
        line.stroke()
        
        let point = UIBezierPath(arcCenter: CGPoint(x: 470, y: 400), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setFill()
        point.fill()
        
        let circle = UIBezierPath(arcCenter: CGPoint(x: 470, y: 400), radius: 80, startAngle: -CGFloat.pi * 0.2, endAngle: CGFloat.pi * 0.2, clockwise: true)
        circle.stroke()
        
        let circle1 = UIBezierPath(arcCenter: CGPoint(x: 470, y: 400), radius: 80, startAngle: CGFloat.pi * 0.8, endAngle: CGFloat.pi * 1.2, clockwise: true)
        circle1.stroke()

        let arc1 = UIBezierPath(arcCenter: CGPoint(x: 550, y: 400), radius: 150, startAngle: -CGFloat.pi * 0.6, endAngle: CGFloat.pi * 1.2, clockwise: false)
        #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).setStroke()
        arc1.stroke()

        let arc2 = UIBezierPath(arcCenter: CGPoint(x: 390, y: 400), radius: 150, startAngle: CGFloat.pi * 1.6, endAngle: -CGFloat.pi * 0.2, clockwise: true)
        arc2.stroke()

        let bisector = UIBezierPath()
        bisector.move(to: CGPoint(x: 470, y: 200))
        bisector.addLine(to: CGPoint(x: 470, y: 500))
        bisector.lineWidth = 2
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        bisector.stroke()
    }
    
    func drawTriangle() {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 150, y: 150))
        line.addLine(to: CGPoint(x: 300, y: 150))
        
        line.move(to: CGPoint(x: 150, y: 140))
        line.addLine(to: CGPoint(x: 150, y: 160))
        line.move(to: CGPoint(x: 300, y: 140))
        line.addLine(to: CGPoint(x: 300, y: 160))
        
        line.move(to: CGPoint(x: 150, y: 220))
        line.addLine(to: CGPoint(x: 380, y: 220))
        
        line.move(to: CGPoint(x: 150, y: 210))
        line.addLine(to: CGPoint(x: 150, y: 230))
        line.move(to: CGPoint(x: 380, y: 210))
        line.addLine(to: CGPoint(x: 380, y: 230))
        
        line.move(to: CGPoint(x: 150, y: 290))
        line.addLine(to: CGPoint(x: 440, y: 290))
        
        line.move(to: CGPoint(x: 150, y: 280))
        line.addLine(to: CGPoint(x: 150, y: 300))
        
        line.move(to: CGPoint(x: 440, y: 280))
        line.addLine(to: CGPoint(x: 440, y: 300))
        
        // bottom line
        line.move(to: CGPoint(x: 300, y: 600))
        line.addLine(to: CGPoint(x: 590, y: 600))
        
        let guideline = UIBezierPath(arcCenter: CGPoint(x: 590, y: 600), radius: 230, startAngle: CGFloat.pi * 1.4, endAngle: CGFloat.pi * 1.1, clockwise: false)
        guideline.stroke()
        
        let guideline1 = UIBezierPath(arcCenter: CGPoint(x: 300, y: 600), radius: 150, startAngle: CGFloat.pi * 1.4, endAngle: -CGFloat.pi * 0.1, clockwise: true)
        guideline1.stroke()
        
        line.move(to: CGPoint(x: 300, y: 600))
        line.addLine(to: CGPoint(x: 393, y: 484))
        
        line.move(to: CGPoint(x: 590, y: 600))
        line.addLine(to: CGPoint(x: 393, y: 484))
      
        line.lineWidth = 3
        line.stroke()
    }
    
    func drawAngleBisector() {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 200, y: 300))
        line.addLine(to: CGPoint(x: 400, y: 200))
        
        line.move(to: CGPoint(x: 200, y: 300))
        line.addLine(to: CGPoint(x: 400, y: 300))
        line.stroke()

        let arc = UIBezierPath(arcCenter: CGPoint(x: 200, y: 300), radius: 130, startAngle: CGFloat.pi * 0.2, endAngle: -CGFloat.pi * 0.4, clockwise: false)
        #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1).setStroke()
        arc.stroke()
        
        let arc1 = UIBezierPath(arcCenter: CGPoint(x: 317, y: 243), radius: 100, startAngle: CGFloat.pi * 0.1, endAngle: -CGFloat.pi * 0.2, clockwise: false)
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        arc1.stroke()
        
        let arc2 = UIBezierPath(arcCenter: CGPoint(x: 330, y: 300), radius: 100, startAngle: CGFloat.pi * 0.1, endAngle: -CGFloat.pi * 0.2, clockwise: false)
        arc2.stroke()
        
        let line1 = UIBezierPath()
        line1.move(to: CGPoint(x: 200, y: 300))
        line1.addLine(to: CGPoint(x: 420, y: 249))
        #colorLiteral(red: 0.6871029735, green: 0.03761260584, blue: 1, alpha: 1).setStroke()
        line1.stroke()
    }

    func drawCrosshair(x: CGFloat, y: CGFloat) {
        let cross = UIBezierPath()
        cross.move(to: CGPoint(x: x, y: y - 30))
        cross.addLine(to: CGPoint(x: x, y: y + 30))
        
        cross.move(to: CGPoint(x: x - 30, y: y))
        cross.addLine(to: CGPoint(x: x + 30, y: y))
        #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1).setStroke()
        cross.stroke()
    }
    
    func drawLineBisector() {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 200, y: 300))
        pencil.addLine(to: CGPoint(x: 500, y: 300))
        
        // first end
        pencil.move(to: CGPoint(x: 200, y: 280))
        pencil.addLine(to: CGPoint(x: 200, y: 320))
        pencil.stroke()
        
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
