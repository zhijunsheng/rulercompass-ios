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
            
        }
    }
    
    func <#name#>(<#parameters#>) -> <#return type#> {
        <#function body#>
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
