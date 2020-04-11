//
//  CanvasView.swift
//  RulerCompass
//
//  Created by Angie Yan on 2020-04-01.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {


    override func draw(_ rect: CGRect) {
//        drawLineBisector()
        drawAngleBisector()

    }
    func drawAngleBisector() {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 200, y: 300))
        line.addLine(to: CGPoint(x: 400, y: 200))
        
        line.move(to: CGPoint(x: 200, y: 300))
        line.addLine(to: CGPoint(x: 400, y: 300))
        line.stroke()

        let arc = UIBezierPath(arcCenter: CGPoint(x: 200, y: 300), radius: 130, startAngle: CGFloat.pi * 0.2, endAngle: -CGFloat.pi * 0.4, clockwise: false)
        #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1).setStroke()
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

//        drawCrosshair(x: 317, y: 243)
        
        let x = 400
        let y = 500
        
        let cross = UIBezierPath()
        cross.move(to: CGPoint(x: x, y: y - 75))
        cross.addLine(to: CGPoint(x: x, y: y + 75))
        
        cross.move(to: CGPoint(x: x - 75, y: y))
        cross.addLine(to: CGPoint(x: x + 75, y: y))
        #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setStroke()
        cross.stroke()
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
        pencil.move(to: CGPoint(x: 40, y: 280))
        pencil.addLine(to: CGPoint(x: 500, y: 320))
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



