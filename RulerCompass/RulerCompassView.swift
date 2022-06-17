//
//  RulerCompassView.swift
//  RulerCompass
//
//  Created by Kenneth Wu on 2022-05-24.
//  Copyright © 2022 daobao. All rights reserved.
//

import UIKit

class RulerCompassView: UIView {
    
    var problem = 6
    
    override func draw(_ rect: CGRect) {
        if problem == 1 {
            lineSegmentCenter()
        } else if problem == 2 {
            angleBisector()
        } else if problem == 3 {
            rightAngleTriangle()
        } else if problem == 4 {
            rightAngleTriangleHyp()
        } else if problem == 5 {
            parallelLine()
        } else if problem == 6 {
            makeACircle()
        }
    }
    
    func makeACircle() {
        let dotR: CGFloat = 5
        let arcR: CGFloat = 200
        let dot1X: CGFloat = 590
        let dot1Y: CGFloat = 500
        let dot2X: CGFloat = 290
        let dot2Y: CGFloat = 500
        let dot3X: CGFloat = 190
        let dot3Y: CGFloat = 300
    
        //dots
        UIBezierPath(arcCenter: CGPoint(x: dot1X, y: dot1Y), radius: dotR, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: dot2X, y: dot2Y), radius: dotR, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        UIBezierPath(arcCenter: CGPoint(x: dot3X, y: dot3Y), radius: dotR, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true).fill()
        
        //arcs
        UIColor.blue.setStroke()
        UIBezierPath(arcCenter: CGPoint(x: dot1X, y: dot1Y), radius: arcR, startAngle: 1.15 * CGFloat.pi, endAngle: 1.3 * CGFloat.pi, clockwise: true).stroke()
        UIBezierPath(arcCenter: CGPoint(x: dot2X, y: dot2Y), radius: arcR, startAngle: 1.7 * CGFloat.pi, endAngle: 1.85 * CGFloat.pi, clockwise: true).stroke()
        UIBezierPath(arcCenter: CGPoint(x: dot2X, y: dot2Y), radius: arcR, startAngle: 0.15 * CGFloat.pi, endAngle: 0.3 * CGFloat.pi, clockwise: true).stroke()
        UIBezierPath(arcCenter: CGPoint(x: dot1X, y: dot1Y), radius: arcR, startAngle: 0.7 * CGFloat.pi, endAngle: 0.85 * CGFloat.pi, clockwise: true).stroke()
        
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: (dot1X + dot2X) / 2, y: 200))
        pencil.addLine(to: CGPoint(x: (dot1X + dot2X) / 2, y: 1000))
        UIColor.orange.setStroke()
        pencil.stroke()
        
        UIColor.purple.setStroke()
        UIBezierPath(arcCenter: CGPoint(x: dot3X, y: dot3Y), radius: arcR * 0.9, startAngle: 0, endAngle: 0.15 * CGFloat.pi, clockwise: true).stroke()
        UIBezierPath(arcCenter: CGPoint(x: dot2X, y: dot2Y), radius: arcR * 0.9, startAngle: 1.55 * CGFloat.pi, endAngle: 1.725 * CGFloat.pi, clockwise: true).stroke()
        UIBezierPath(arcCenter: CGPoint(x: dot3X, y: dot3Y), radius: arcR * 0.75, startAngle: 0.5 * CGFloat.pi, endAngle: 0.65 * CGFloat.pi, clockwise: true).stroke()
        UIBezierPath(arcCenter: CGPoint(x: dot2X, y: dot2Y), radius: arcR * 0.75, startAngle: 1.05 * CGFloat.pi, endAngle: 1.2 * CGFloat.pi, clockwise: true).stroke()
        
        let pencil2 = UIBezierPath()
        let hLeg1 = dot2X - dot3X
        let vLeg1 = dot2Y - dot3Y
        let angle1 = atan(vLeg1 / hLeg1)
        let sLeg1 = sqrt(hLeg1 * hLeg1 + vLeg1 * vLeg1)
        let sLeg2 = sLeg1 / 2
        let hyp2 = sLeg2 / cos(angle1)
         
        let angle3 = 0.5 * CGFloat.pi - angle1
        let hLeg3 = dot1X - (dot2X - hyp2)
        let vLeg3 = tan(angle3) * hLeg3

        pencil2.move(to: CGPoint(x: dot2X - hyp2, y: dot2Y))
        pencil2.addLine(to: CGPoint(x: dot1X, y: dot1Y  - vLeg3))
        UIColor.orange.setStroke()
        pencil2.stroke()
        
        let middle = (dot1X + dot2X) / 2
        let hLeg4 = middle - (dot2X - hyp2)
        let circleCenterY = dot1Y - hLeg4 * tan(angle3)
        let vLeg5 = hLeg4 * tan(angle3)
        let hLeg5 = dot1X - middle
        let radius = sqrt(vLeg5 * vLeg5 + hLeg5 * hLeg5)
        
        let circle = UIBezierPath(arcCenter: CGPoint(x: middle, y: circleCenterY), radius: radius, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        UIColor.red.setStroke()
        circle.stroke()
    }

    func parallelLine() {
        
        let dX: CGFloat = 350
        let dY: CGFloat = 250
        let distance: CGFloat = 150
        
        
        let pencil1 = UIBezierPath()
        pencil1.move(to: CGPoint(x: 0, y: dY + distance))
        pencil1.addLine(to: CGPoint(x: 1000, y: dY + distance))
        pencil1.lineWidth = 5
        pencil1.stroke()
        
        let arc = UIBezierPath(arcCenter: CGPoint(x: dX, y: dY), radius: 10, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        arc.fill()
        
        let arc2 = UIBezierPath(arcCenter: CGPoint(x: dX, y: dY), radius: 200, startAngle: 0.2 * CGFloat.pi, endAngle: 0.8 * CGFloat.pi, clockwise: true)
        UIColor.blue.setStroke()
        arc2.stroke()
    
        let arcCenterX = sqrt(200 * 200 - (500 - dX) * (500 - dX))
        let arc3 = UIBezierPath(arcCenter: CGPoint(x: arcCenterX + dX, y: dY + distance), radius: 200, startAngle: 0.6 * CGFloat.pi, endAngle: 0.9 * CGFloat.pi, clockwise: true)
        UIColor.purple.setStroke()
        arc3.stroke()
        
        let arc4 = UIBezierPath(arcCenter: CGPoint(x: dX - arcCenterX, y: dY + distance), radius: 200, startAngle: 0.1 * CGFloat.pi, endAngle: 0.4 * CGFloat.pi, clockwise: true)
        arc4.stroke()
        
        let pencil2 = UIBezierPath()
        pencil2.move(to: CGPoint(x: dX, y: 0))
        pencil2.addLine(to: CGPoint(x: dX, y: 1000))
        UIColor.orange.setStroke()
        pencil2.stroke()
        
        let arc5 = UIBezierPath(arcCenter: CGPoint(x: dX, y: dY), radius: 50, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        UIColor.blue.setStroke()
        arc5.stroke()
        
        let arc6 = UIBezierPath(arcCenter: CGPoint(x: dX, y: dY + 50), radius: 300, startAngle: -0.1 * CGFloat.pi, endAngle: 0, clockwise: true)
        UIColor.purple.setStroke()
        arc6.stroke()
        
        let arc7 = UIBezierPath(arcCenter: CGPoint(x: dX, y: dY - 50), radius: 300, startAngle: 0, endAngle: 0.1 * CGFloat.pi, clockwise: true)
        arc7.stroke()
        
        let pencil3 = UIBezierPath()
        pencil3.move(to: CGPoint(x: 0, y: dY))
        pencil3.addLine(to: CGPoint(x: 1000, y: dY))
        pencil3.lineWidth = 5
        UIColor.red.setStroke()
        pencil3.stroke()
        
    }
    
    func rightAngleTriangleHyp() {
        let originX: CGFloat = 200
        let originY: CGFloat = 500
        
        let leg1Length: CGFloat = 200
        let hypLength: CGFloat = 400
        
        let pencil1 = UIBezierPath()
        pencil1.move(to: CGPoint(x: originX, y: 0))
        pencil1.addLine(to: CGPoint(x: originX, y: 1000))
        pencil1.move(to: CGPoint(x: 0, y: originY))
        pencil1.addLine(to: CGPoint(x: 1000, y: originY))
        pencil1.stroke()
        
        let arc1 = UIBezierPath(arcCenter: CGPoint(x: originX, y: originY - 50), radius: 75, startAngle: CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        UIColor.blue.setStroke()
        arc1.stroke()
        
        let arc2 = UIBezierPath(arcCenter: CGPoint(x: originX - 50, y: originY), radius: 75, startAngle: CGFloat.pi * 1.5 , endAngle: 0.5 * CGFloat.pi, clockwise: true)
        arc2.stroke()
        
        let arc3 = UIBezierPath(arcCenter: CGPoint(x: originX + 50, y: originY), radius: 75, startAngle: CGFloat.pi * 1.5 , endAngle: 0.5 * CGFloat.pi, clockwise: false)
        arc3.stroke()
        
        let arc4 = UIBezierPath(arcCenter: CGPoint(x: originX, y: originY), radius: leg1Length, startAngle: CGFloat.pi * 1.4, endAngle: CGFloat.pi * 1.6, clockwise: true)
        UIColor.purple.setStroke()
        arc4.stroke()
        
        let arc5 = UIBezierPath(arcCenter: CGPoint(x: originX, y: originY - leg1Length), radius: hypLength, startAngle: CGFloat.pi * 0.1, endAngle: CGFloat.pi * 0.25, clockwise: true)
        arc5.stroke()
        
        let base = sqrt(hypLength * hypLength - leg1Length * leg1Length)
        let pencil2 = UIBezierPath()
        pencil2.move(to: CGPoint(x: 100, y: 150))
        pencil2.addLine(to: CGPoint(x: 100 + hypLength, y: 150))
        pencil2.move(to: CGPoint(x: originX, y: originY - leg1Length))
        pencil2.addLine(to: CGPoint(x: originX + base, y: originY))
        pencil2.move(to: CGPoint(x: originX, y: originY))
        pencil2.move(to: CGPoint(x: originX + base, y: originY))
        UIColor.green.setStroke()
        pencil2.lineWidth = 5
        pencil2.stroke()
        
        let pencil3 = UIBezierPath()
        pencil3.move(to: CGPoint(x: originX, y: originY))
        pencil3.addLine(to: CGPoint(x: originX + base, y: originY))
        UIColor.red.setStroke()
        pencil3.lineWidth = 5
        pencil3.stroke()
        
        let pencil4 = UIBezierPath()
        pencil4.move(to: CGPoint(x: 100, y: 100))
        pencil4.addLine(to: CGPoint(x: 100 + leg1Length, y: 100))
        pencil4.move(to: CGPoint(x: originX, y: originY))
        pencil4.addLine(to: CGPoint(x: originX, y: originY - leg1Length))
        UIColor.orange.setStroke()
        pencil4.lineWidth = 5
        pencil4.stroke()
        
    }
    
    func rightAngleTriangle() {
    
        let originX: CGFloat = 200
        let originY: CGFloat = 500
    
        let leg1Length: CGFloat = 200
        let leg2Length: CGFloat = 400
        
        let pencil1 = UIBezierPath()
        pencil1.move(to: CGPoint(x: originX, y: 0))
        pencil1.addLine(to: CGPoint(x: originX, y: 1000))
        pencil1.move(to: CGPoint(x: 0, y: originY))
        pencil1.addLine(to: CGPoint(x: 1000, y: originY))
        pencil1.stroke()
        
        let arc1 = UIBezierPath(arcCenter: CGPoint(x: originX, y: originY - 50), radius: 75, startAngle: CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: false)
        UIColor.blue.setStroke()
        arc1.stroke()
        
        let arc2 = UIBezierPath(arcCenter: CGPoint(x: originX - 50, y: originY), radius: 75, startAngle: CGFloat.pi * 1.5 , endAngle: 0.5 * CGFloat.pi, clockwise: true)
        arc2.stroke()
        
        let arc3 = UIBezierPath(arcCenter: CGPoint(x: originX + 50, y: originY), radius: 75, startAngle: CGFloat.pi * 1.5 , endAngle: 0.5 * CGFloat.pi, clockwise: false)
        arc3.stroke()
        
        let arc4 = UIBezierPath(arcCenter: CGPoint(x: originX, y: originY), radius: leg1Length, startAngle: CGFloat.pi * 1.4, endAngle: CGFloat.pi * 1.6, clockwise: true)
        UIColor.purple.setStroke()
        arc4.stroke()
        
        let arc5 = UIBezierPath(arcCenter: CGPoint(x: originX, y: originY), radius: leg2Length, startAngle: CGFloat.pi * -0.05, endAngle: CGFloat.pi * 0.05, clockwise: true)
        arc5.stroke()
        
        let pencil2 = UIBezierPath()
        pencil2.move(to: CGPoint(x: 100, y: 150))
        pencil2.addLine(to: CGPoint(x: 100 + leg2Length, y: 150))
        pencil2.move(to: CGPoint(x: originX, y: originY))
        pencil2.addLine(to: CGPoint(x: originX + leg2Length, y: originY))
        UIColor.green.setStroke()
        pencil2.lineWidth = 5
        pencil2.stroke()
        pencil2.lineWidth = 5
        pencil2.stroke()
        
        let pencil3 = UIBezierPath()
        pencil3.move(to: CGPoint(x: originX + leg2Length, y: originY))
        pencil3.addLine(to: CGPoint(x: originX, y: originY - leg1Length))
        pencil3.lineWidth = 5
        UIColor.red.setStroke()
        pencil3.stroke()
        
        let pencil4 = UIBezierPath()
        pencil4.move(to: CGPoint(x: 100, y: 100))
        pencil4.addLine(to: CGPoint(x: 100 + leg1Length, y: 100))
        pencil4.move(to: CGPoint(x: originX, y: originY))
        pencil4.addLine(to: CGPoint(x: originX, y: originY - leg1Length))
        UIColor.orange.setStroke()
        pencil4.lineWidth = 5
        pencil4.stroke()
    }

    func angleBisector() {
        
        let angleSizeX: CGFloat = 600
        let angleSizeY: CGFloat = 100
        let aX: CGFloat = 100
        let aY: CGFloat = 500
        
        let pencil1 = UIBezierPath()
        pencil1.move(to: CGPoint(x: angleSizeX, y: aY))
        pencil1.addLine(to: CGPoint(x: aX, y: aY))
        pencil1.addLine(to: CGPoint(x: angleSizeX, y: angleSizeY))
        pencil1.lineWidth = 5
        pencil1.stroke()
        
        let arc1 = UIBezierPath(arcCenter: CGPoint(x: aX, y: aY), radius: 150, startAngle: 0.2, endAngle: -0.25 * CGFloat.pi, clockwise: false)
        UIColor.blue.setStroke()
        arc1.stroke()
        
        let angl = atan((aY - angleSizeY) / (angleSizeX - aX))
        let h = sin(angl) * 150
        let b = cos(angl) * 150
        let p1X = aX + b
        let p1Y = aY - h
        let p2X = aX + 150
        let p2Y = aY
        
        let arc2 = UIBezierPath(arcCenter: CGPoint(x: p2X, y: p2Y), radius: 150, startAngle: -0.35 * CGFloat.pi, endAngle: -0.1 * CGFloat.pi, clockwise: true)
        arc2.stroke()

        let arc3 = UIBezierPath(arcCenter: CGPoint(x: p1X, y: p1Y), radius: 150, startAngle: 0.1 * CGFloat.pi, endAngle: -0.1 * CGFloat.pi, clockwise: false)
        arc3.stroke()
        
        let angl2 = angl / 2
        let p3X: CGFloat = aX + 400
        let p3Y = aY - tan(angl2) * 400
        let pencil2 = UIBezierPath()
        pencil2.move(to: CGPoint(x: aX, y: aY))
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
