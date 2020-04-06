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
