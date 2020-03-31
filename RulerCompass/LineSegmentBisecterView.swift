//
//  LineSegmentBisecterView.swift
//  RulerCompass
//
//  Created by Andy Yan on 2020-03-31.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class LineSegmentBisecterView: UIView {

    override func draw(_ rect: CGRect) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 100, y: 200))
        pencil.addLine(to: CGPoint(x: 300, y: 200))
        
        pencil.stroke()
    }
    

}
