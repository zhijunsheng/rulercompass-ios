//
//  CanvasView.swift
//  RulerCompass
//
//  Created by Felix Lo on 2020/5/27.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    
    override func draw(_ rect: CGRect) {
        let arc = UIBezierPath(arcCenter: CGPoint(x: 300, y: 300), radius: 100, startAngle: 0, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        arc.stroke()
    }
    

}
