//
//  CanvasView.swift
//  RulerCompass
//
//  Created by Halwong on 2020/4/5.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    override func draw(_ rect: CGRect) {
        drawLineSegmentBisector()
    }
    
    func drawLineSegmentBisector() {
        let line = UIBezierPath()
        
        line.move(to: CGPoint(x: 156, y: 145))
        line.addLine(to: CGPoint(x: 578, y: 240))
        line.stroke()
    }
}
