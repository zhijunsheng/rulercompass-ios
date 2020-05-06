//
//  CanvasView.swift
//  RulerCompass
//
//  Created by Lambert Lin on 2020/4/1.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    var flag = 7
    override func draw(_ rect: CGRect) {
        if flag == 1 {
            drawAngleBisector()
        } else if flag == 2 {
            drawLineSegmentBisector()
        } else if flag == 3 {
            triangle()
        } else if flag == 4 {
            perpendicular()
        } else if flag == 5 {
            perpendicular2()
        } else if flag == 6 {
            parallel()
        }else if flag == 7 {
             we2()
        }
    }
    
    func we2() {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 120, y: 500))
        pencil.addLine(to: CGPoint(x: 608, y: 500))
        pencil.lineWidth = 5
        pencil.stroke()
        let aw = UIBezierPath(arcCenter: CGPoint(x: 364, y: 400), radius: 4, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        
        aw.fill()
        let awe = UIBezierPath(arcCenter: CGPoint(x: 364, y: 400), radius: 200, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        awe.stroke()
        
        let pencil1 = UIBezierPath()
        pencil1.move(to: CGPoint(x: 364, y: 100))
        pencil1.addLine(to: CGPoint(x: 364, y: 500))
        pencil1.stroke()
        
        let pencil2 = UIBezierPath()
        pencil2.move(to: CGPoint(x: 194, y: 300))
        pencil2.addLine(to: CGPoint(x: 538, y: 300))
        pencil2.stroke()
        
        let eee = UIBezierPath(arcCenter: CGPoint(x: 538, y: 300), radius: 3, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setFill()
        eee.fill()
        
        let ee1 = UIBezierPath(arcCenter: CGPoint(x: 193, y: 300), radius: 3, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setFill()
        ee1.fill()
    }
    
    func parallel()  {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 20, y: 500))
        pencil.addLine(to: CGPoint(x: 708, y: 500))
        pencil.lineWidth = 3
        pencil.stroke()

        let pen = UIBezierPath(arcCenter: CGPoint(x: 340, y: 300), radius: 5, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        pen.fill()
        
        let pen1 = UIBezierPath(arcCenter: CGPoint(x: 340, y: 300), radius:250, startAngle: 0.2 * CGFloat.pi, endAngle: 0.8 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        pen1.stroke()

        let pen2 = UIBezierPath(arcCenter: CGPoint(x: 492, y: 500), radius: 250, startAngle: 0.4 * CGFloat.pi, endAngle:  0.8 * CGFloat.pi, clockwise: true)
        pen2.stroke()
        let pen3 = UIBezierPath(arcCenter: CGPoint(x: 192, y: 500), radius: 250, startAngle:0.2 * CGFloat.pi, endAngle:  0.4 * CGFloat.pi, clockwise: true)
        pen3.stroke()
        
        let pencil3 = UIBezierPath()
        pencil3.move(to: CGPoint(x: 340, y: 200))
        pencil3.addLine(to: CGPoint(x: 340, y: 800))
        pencil3.stroke()

        let pen5 = UIBezierPath(arcCenter: CGPoint(x: 140, y: 500) , radius: 6, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1).setFill()
        pen5.fill()
        
        let pen6 = UIBezierPath(arcCenter: CGPoint(x: 140, y: 500) , radius: 90, startAngle: -0.1 * CGFloat.pi, endAngle: 1.1 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1).setStroke()
        pen6.stroke()
        
        let pen7 = UIBezierPath(arcCenter: CGPoint(x: 50, y: 500) , radius: 160, startAngle: -0.4 * CGFloat.pi, endAngle: -0.2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1).setStroke()
        pen7.stroke()
        
        let pen8 = UIBezierPath(arcCenter: CGPoint(x: 230, y: 500) , radius: 160, startAngle: -0.8 * CGFloat.pi, endAngle: -0.6 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setStroke()
        pen8.stroke()
        
        let notAnswer = UIBezierPath()
        notAnswer.move(to: CGPoint(x: 140, y: 100))
        notAnswer.addLine(to: CGPoint(x: 140, y: 600))
        notAnswer.stroke()
        
        let pen9 = UIBezierPath(arcCenter: CGPoint(x: 140, y: 500), radius: 200, startAngle: 1.3 * CGFloat.pi, endAngle: 1.7 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        pen9.stroke()
        
        let trueAnswer = UIBezierPath()
        trueAnswer.move(to: CGPoint(x: 90, y: 300))
        trueAnswer.addLine(to: CGPoint(x: 590, y: 300))
        trueAnswer.lineWidth = 3
        #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1).setStroke()
        trueAnswer.stroke()
         
        
    }
    
    func perpendicular2() {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 120, y: 500))
        pencil.addLine(to: CGPoint(x:608, y:500))
        pencil.lineWidth = 3
        pencil.stroke()
        
        
        let pen = UIBezierPath(arcCenter: CGPoint(x: 340, y: 300), radius: 5, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).setFill()
        pen.fill()
        
        let pen1 = UIBezierPath(arcCenter: CGPoint(x: 340, y: 300), radius: 290, startAngle: -0.9 * CGFloat.pi, endAngle: 1.9 * CGFloat.pi, clockwise: false)
        pen1.stroke()
        
        let pen2 = UIBezierPath(arcCenter: CGPoint(x: 130, y: 500), radius: 400, startAngle:  -0.4 * CGFloat.pi, endAngle: -0.2 * CGFloat.pi, clockwise: true)
        pen2.stroke()
        
        let pen3 = UIBezierPath(arcCenter: CGPoint(x:550, y:500), radius: 400, startAngle:  -0.6 * CGFloat.pi, endAngle: -0.8 * CGFloat.pi, clockwise: false)
        pen3.stroke()
        let answer = UIBezierPath()
        answer.move(to: CGPoint(x: 340, y: 120))
        answer.addLine(to: CGPoint(x: 340, y: 600))
        answer.stroke()
        
        let pen5 = UIBezierPath(arcCenter: CGPoint(x:550, y:500), radius: 400, startAngle:  -0.6 * CGFloat.pi, endAngle: -0.8 * CGFloat.pi, clockwise: false)
        pen5.stroke()
        
    }
    
    func drawAngleBisector() {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 120 , y: bounds.height / 2))
        pencil.addLine(to: CGPoint(x: bounds.width - 120 , y: bounds.height / 2))
        
        pencil.move(to: CGPoint(x: 120 , y: bounds.height / 2))
        pencil.addLine(to: CGPoint(x: bounds.width - 120, y: bounds.height / 2 - 200))
        pencil.lineWidth = 5
        pencil.stroke()
        
        let p2 = UIBezierPath(arcCenter: CGPoint(x: 120 , y: bounds.height / 2), radius: 300, startAngle: -0.2 * CGFloat.pi, endAngle: 0.1 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        p2.stroke()
        
        let p = UIBezierPath(arcCenter: CGPoint(x: 397 , y: 250), radius: 300, startAngle: -0.2 * CGFloat.pi, endAngle: 0.1 * CGFloat.pi, clockwise: true)
        p.stroke()

        let p1 = UIBezierPath(arcCenter: CGPoint(x: 420 , y: 365), radius: 300, startAngle: -0.2 * CGFloat.pi, endAngle: 0.1 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1).setStroke()
        p1.stroke()
        
        let answer = UIBezierPath()
        answer.move(to: CGPoint(x: 120, y: bounds.height / 2))
        answer.addLine(to: CGPoint(x: 697, y: 250))
        answer.lineWidth = 6
        answer.stroke()
    }
    
    
    func crosshair(x: CGFloat, y: CGFloat)  {
       
        
        let cross = UIBezierPath()
        cross.move(to: CGPoint(x: x - 50, y: y))
        cross.addLine(to: CGPoint(x: x + 50, y: y ))
        cross.move(to: CGPoint(x: x, y: y
            - 50))
        cross.addLine(to: CGPoint(x: x, y: y + 50))
        cross.stroke()
    }
    
    func drawLineSegmentBisector() {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 120 , y: bounds.height / 2))
        pencil.addLine(to: CGPoint(x:bounds.width - 120 , y: bounds.height / 2))
        
        pencil.move(to: CGPoint(x: 120 , y: bounds.height / 2 - 12))
        pencil.addLine(to: CGPoint(x: 120 , y: bounds.height / 2 + 12))
        
        pencil.move(to: CGPoint(x: bounds.width - 120  , y: bounds.height / 2 - 12))
        pencil.addLine(to: CGPoint(x: bounds.width - 120 , y: bounds.height / 2 + 12))
        
        pencil.lineWidth = 5
        pencil.stroke()
        
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setStroke()
        let pen = UIBezierPath(arcCenter: CGPoint(x: 120 , y: bounds.height / 2), radius: 320, startAngle: -0.5 * CGFloat.pi, endAngle: CGFloat.pi * 0.5, clockwise: true)
        pen.lineWidth = 3
        pen.stroke()
        
        let pe1 = UIBezierPath(arcCenter: CGPoint(x:bounds.width - 120 , y: bounds.height / 2), radius: 320, startAngle: -0.5 * CGFloat.pi, endAngle: CGFloat.pi * 0.5, clockwise: false)
        pe1.lineWidth = 3
        pe1.stroke()
        
        #colorLiteral(red: 0.9950962663, green: 0.1524247825, blue: 0.001851926907, alpha: 1).setStroke()
        let pe = UIBezierPath()
        pe.move(to: CGPoint(x: bounds.width / 2 , y: bounds.height - 120))
        pe.addLine(to: CGPoint(x: bounds.width / 2 , y: 120 ))
        pe.lineWidth = 6
        pe.stroke()
    }
    
    func triangle() {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 130 , y: 600))
        pencil.addLine(to: CGPoint(x: 500, y: 600))
        pencil.move(to: CGPoint(x: 130, y: 578))
        pencil.addLine(to: CGPoint(x: 130, y: 622))
        pencil.move(to: CGPoint(x: 500, y: 578))
        pencil.addLine(to: CGPoint(x: 500, y: 622))
        
        pencil.move(to: CGPoint(x: 130, y: 650))
        pencil.addLine(to: CGPoint(x: 590, y: 650))
        pencil.move(to: CGPoint(x: 130, y: 628))
        pencil.addLine(to: CGPoint(x: 130, y: 672))
        pencil.move(to: CGPoint(x: 590, y: 628))
        pencil.addLine(to: CGPoint(x: 590, y: 672))
        
        pencil.move(to: CGPoint(x: 130, y: 700))
        pencil.addLine(to: CGPoint(x: 680, y: 700))
        pencil.move(to: CGPoint(x: 130, y: 678))
        pencil.addLine(to: CGPoint(x: 130, y: 722))
        pencil.move(to: CGPoint(x: 680, y: 678))
        pencil.addLine(to: CGPoint(x: 680, y: 722))
        
        pencil.stroke()
        
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 130 , y: 500))
        pen.addLine(to: CGPoint(x: 500, y: 500))
        pen.stroke()
        
        let pen1 = UIBezierPath(arcCenter: CGPoint(x: 130 , y: 500), radius: 460, startAngle: -0.5 * CGFloat.pi, endAngle: -0.1 * CGFloat.pi, clockwise: true)
         pen1.stroke()
        let pen2 = UIBezierPath(arcCenter: CGPoint(x: 500 , y: 500), radius: 540, startAngle: -0.5 * CGFloat.pi, endAngle: -0.9 * CGFloat.pi, clockwise: false)
        pen2.stroke()
        crosshair(x: 208, y: 47)
        let answer = UIBezierPath()
        answer.move(to: CGPoint(x: 208, y: 47))
        answer.addLine(to: CGPoint(x: 500, y: 500))
        
        answer.move(to: CGPoint(x: 208, y: 47))
        answer.addLine(to: CGPoint(x: 130, y: 500))
        answer.stroke()
    }
    
    // I II  III IV V VI VII VIII IX X XI XII XIII
    
    func perpendicular() {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 82, y: 202))
        pencil.addLine(to: CGPoint(x: 682, y: 202))
        pencil.lineWidth = 5
        pencil.stroke()
    
        let pe = UIBezierPath(arcCenter: CGPoint(x: 382, y: 202), radius:6, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        pe.fill()
        pe.stroke()
        
        let pem = UIBezierPath(arcCenter: CGPoint(x: 382, y: 202), radius:100, startAngle: -0.9 * CGFloat.pi, endAngle: -0.1 * CGFloat.pi, clockwise: false)
        pem.stroke()
        
        let pem1 = UIBezierPath(arcCenter: CGPoint(x: 282, y: 202), radius:230, startAngle: 0.5 * CGFloat.pi, endAngle: 0.2 * CGFloat.pi, clockwise: false)
        pem1.stroke()
        
        let pem2 = UIBezierPath(arcCenter: CGPoint(x: 482, y: 202), radius:230, startAngle: 0.5 * CGFloat.pi, endAngle: 0.8 * CGFloat.pi, clockwise: true)
        pem2.stroke()
        
        let answer = UIBezierPath()
        answer.move(to: CGPoint(x: 382, y: 102))
        answer.addLine(to: CGPoint(x: 382, y: 610))
        #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1).setStroke()
        answer.lineWidth = 5
        answer.stroke()
        
    }
 }
