//
//  LineBisectingView.swift
//  RulerCompass
//
//  Created by Elaine on 2020-03-31.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    var flag = -1
    
    override func draw(_ rect: CGRect) {
        
        if flag == 1 {
            lineBisecting()
        }
        if flag == 2{
            angleBisecting()
        }
        if flag == 3 {
            drawingTriangle()
        }
        if flag == 5 {
            drawingPerpendicularLines()
        }
        if flag == 6 {
            drawingPerpendicularLines2()
        }
        if flag == 7 {
            drawingParallelLines()
        }
    }
    
    func drawingParallelLines()  {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 50, y: 500))
        pencil.addLine(to: CGPoint(x: 700, y: 500))
        pencil.lineWidth = 3
        pencil.stroke()
        
        
        let dot = UIBezierPath(arcCenter: CGPoint(x: 305, y: 300), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        dot.fill()
        
        let pencil1 = UIBezierPath()
        pencil1.move(to: CGPoint(x: 150, y: 600))
        pencil1.addLine(to: CGPoint(x: 407, y: 100))
        pencil1.stroke()
        
        let halfCircle2 = UIBezierPath(arcCenter: CGPoint(x: 200, y: 500), radius: 145, startAngle:  1.6 * CGFloat.pi, endAngle: 2.2 * CGFloat.pi, clockwise: true)
        halfCircle2.stroke()
        
        let halfCircle3 = UIBezierPath(arcCenter: CGPoint(x: 307, y: 300), radius: 145, startAngle:  1.6 * CGFloat.pi, endAngle: 2.2 * CGFloat.pi, clockwise: true)
        halfCircle3.stroke()
        
        
        let halfCircle5 = UIBezierPath(arcCenter: CGPoint(x: 372, y: 172), radius: 150, startAngle:  1.85 * CGFloat.pi, endAngle: 2.5 * CGFloat.pi, clockwise: true)
        halfCircle5.stroke()
        
        let pencil2 = UIBezierPath()
        
        pencil2.move(to: CGPoint(x: 150, y: 300))
        pencil2.addLine(to: CGPoint(x: 607, y: 300))
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setStroke()
        pencil2.stroke()
    }
    func drawingPerpendicularLines2() {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 100, y: 300))
        pencil.addLine(to: CGPoint(x: 500, y: 300))
        pencil.lineWidth = 3
        pencil.stroke()
        
        let halfCircle = UIBezierPath(arcCenter: CGPoint(x: 305, y: 100), radius: 5, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        halfCircle.fill()
        
        let halfCircle2 = UIBezierPath(arcCenter: CGPoint(x: 300, y: 100), radius: 250, startAngle:  0.2 * CGFloat.pi, endAngle: 0.4 * CGFloat.pi, clockwise: true)
        halfCircle2.lineWidth = 2
        halfCircle2.stroke()
        
        let halfCircle3 = UIBezierPath(arcCenter: CGPoint(x: 300, y: 100), radius: 250, startAngle:  0.6 * CGFloat.pi, endAngle: 0.8 * CGFloat.pi, clockwise: true)
        halfCircle3.lineWidth = 2
        halfCircle3.stroke()
        
        
        let halfCircle5 = UIBezierPath(arcCenter: CGPoint(x: 150, y: 300), radius: 250, startAngle:  0.15 * CGFloat.pi, endAngle: 0.35 * CGFloat.pi, clockwise: false)
        halfCircle5.lineWidth = 3
        halfCircle5.stroke()
        
        let halfCircle6 = UIBezierPath(arcCenter: CGPoint(x: 455, y: 300), radius: 250, startAngle:  0.55 * CGFloat.pi, endAngle: 0.75 * CGFloat.pi, clockwise: true)
        halfCircle6.lineWidth = 3
        halfCircle6.stroke()
        
        let pencil1 = UIBezierPath()
        pencil1.move(to: CGPoint(x: 305, y: 20))
        pencil1.addLine(to: CGPoint(x: 305, y: 700))
        pencil1.lineWidth = 5
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setStroke()
        pencil1.stroke()
    }
    func drawingPerpendicularLines(){
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 200, y: 300))
        pencil.addLine(to: CGPoint(x: 660, y: 300))
        
        let halfCircle = UIBezierPath(arcCenter: CGPoint(x: 430, y: 300), radius: 2, startAngle:  0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        halfCircle.lineWidth = 5
        halfCircle.stroke()
        
        let halfCircle2 = UIBezierPath(arcCenter: CGPoint(x: 430, y: 280), radius: 200, startAngle:  -1 * CGFloat.pi, endAngle: 0 * CGFloat.pi, clockwise: false)
        halfCircle2.lineWidth = 5
        halfCircle2.stroke()
        
        let halfCircle3 = UIBezierPath(arcCenter: CGPoint(x: 235, y: 280), radius: 240, startAngle:  0.1 * CGFloat.pi, endAngle: 0.3 * CGFloat.pi, clockwise: true)
        halfCircle3.lineWidth = 5
        halfCircle3.stroke()
        
        let halfCircle5 = UIBezierPath(arcCenter: CGPoint(x: 637, y: 300), radius: 240, startAngle:  0.9 * CGFloat.pi, endAngle: 0.7 * CGFloat.pi, clockwise: true)
        halfCircle5.lineWidth = 5
        halfCircle5.stroke()
        
        pencil.move(to: CGPoint(x: 430, y: 100))
        pencil.addLine(to: CGPoint(x: 430, y: 500))
        
        pencil.stroke()
    }
    
    func drawingTriangle() {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 70, y: 100))
        pencil.addLine(to: CGPoint(x: 270, y: 100))
        
        pencil.move(to: CGPoint(x: 70, y: 120))
        pencil.addLine(to: CGPoint(x: 300, y: 120))
        
        pencil.move(to: CGPoint(x: 70, y: 140))
        pencil.addLine(to: CGPoint(x: 330, y: 140))
        
        pencil.move(to: CGPoint(x: 300, y: 600))
        pencil.addLine(to: CGPoint(x: 560, y: 600))
        
        let halfCircle2 = UIBezierPath(arcCenter: CGPoint(x: 300, y: 600), radius: 230, startAngle:  1.6 * CGFloat.pi, endAngle: 1.8 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.6177716851, green: 0.9856142402, blue: 0.7465093136, alpha: 1).setStroke()
        halfCircle2.lineWidth = 5
        halfCircle2.stroke()
        
        let halfCircle3 = UIBezierPath(arcCenter: CGPoint(x: 560, y: 600), radius: 200, startAngle:  1.3 * CGFloat.pi, endAngle: 1.5 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setStroke()
        halfCircle3.lineWidth = 5
        halfCircle3.stroke()
        
        pencil.move(to: CGPoint(x: 300, y: 600))
        pencil.addLine(to: CGPoint(x: 455, y: 430))
        pencil.addLine(to: CGPoint(x: 560, y: 600))
        pencil.stroke()
    }
    
    func angleBisecting() {
        let pencil = UIBezierPath()
        //         angle
        pencil.move(to: CGPoint(x: 270, y: 200))
        pencil.addLine(to: CGPoint(x: 470, y: 100))
        
        pencil.move(to: CGPoint(x: 270, y: 200))
        pencil.addLine(to: CGPoint(x: 470, y: 300))
        pencil.stroke()
        // straight line
        let bisector = UIBezierPath()
        bisector.move(to: CGPoint(x: 270, y: 200))
        bisector.addLine(to: CGPoint(x: 670, y: 200))
        
        #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1).setStroke()
        bisector.stroke()
        
        
        let halfCircle = UIBezierPath(arcCenter:CGPoint(x: 270, y: 200), radius: 120, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1).setStroke()
        halfCircle.lineWidth = 5
        halfCircle.stroke()
        
        let halfCircle2 = UIBezierPath(arcCenter: CGPoint(x: 375, y: 147), radius: 120, startAngle:  0, endAngle: 0.2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.6177716851, green: 0.9856142402, blue: 0.7465093136, alpha: 1).setStroke()
        halfCircle2.lineWidth = 5
        halfCircle2.stroke()
        
        let halfCircle3 = UIBezierPath(arcCenter: CGPoint(x: 370, y: 250), radius: 120, startAngle:  1.7 * CGFloat.pi, endAngle: 1.9 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setStroke()
        halfCircle3.lineWidth = 5
        halfCircle3.stroke()
    }
    
    func drawCross(originX: CGFloat, originY: CGFloat) {
        
        let randomPlusSign = UIBezierPath()
        
        randomPlusSign.move(to: CGPoint(x: originX, y: originY - 50))
        randomPlusSign.addLine(to: CGPoint(x: originX, y: originY + 50))
        
        randomPlusSign.move(to: CGPoint(x: originX - 50, y: originY))
        randomPlusSign.addLine(to: CGPoint(x: originX + 50, y: originY))
        #colorLiteral(red: 0, green: 0.3142123288, blue: 0.2280678448, alpha: 1).setStroke()
        randomPlusSign.stroke()
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
