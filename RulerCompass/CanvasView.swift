//
//  CanvasView.swift
//  RulerCompass
//
//  Created by Grace Huang on 4/2/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    override func draw(_ rect: CGRect) {
        drawLineSegmentBisector()
    }
    
    func drawLineSegmentBisector() {
        let ruler = UIBezierPath()
        let compass = UIBezierPath()
        
        ruler.move(to: CGPoint(x: 100, y: 400))
        ruler.addLine(to: CGPoint(x: 600, y: 400))
        ruler.move(to: CGPoint(x: 200, y: 390))
        ruler.addLine(to: CGPoint(x: 200, y: 410))
        
        ruler.move(to: CGPoint(x: 260, y: 390))
        ruler.addLine(to: CGPoint(x: 260, y: 410))
        ruler.move(to: CGPoint(x: 320, y: 390))
        ruler.addLine(to: CGPoint(x: 320, y: 410))

        ruler.stroke()
        
        compass.addArc(withCenter: CGPoint(x: 200, y: 400), radius: 200, startAngle: 1.5 * CGFloat.pi, endAngle: 2.5 * CGFloat.pi, clockwise: true)
        
//        compass.move(to: CGPoint(x: 260, y: 400))
        compass.addArc(withCenter: CGPoint(x: 320, y: 400), radius: 200, startAngle: 0.5 * CGFloat.pi, endAngle: 1.5 * CGFloat.pi, clockwise: true)
        
        ruler.move(to: CGPoint(x: 260, y: 200))
        ruler.addLine(to: CGPoint(x: 260, y: 610))
        
        ruler.stroke()
        
        compass.stroke()
    }
}
