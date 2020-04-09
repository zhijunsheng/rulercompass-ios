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
//        drawLineSegmentBisector()
        drawAngleBisector()
        drawCross(x: 532, y: 287)
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
