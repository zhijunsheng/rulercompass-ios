//
//  LineSegmentBisectorView.swift
//  RulerCompass
//
//  Created by Peter Shi on 2020-03-31.
//  Copyright © 2020 daobao. All rights reserved.
//

import UIKit

class PaperView: UIView {
    override func draw(_ rect: CGRect) {
        lineSegmentBisector()
    }
    
    func lineSegmentBisector() {
        let rulerLine = UIBezierPath()
        let compassLine = UIBezierPath()
        rulerLine.move(to: CGPoint(x: 200, y: bounds.height / 2))
        rulerLine.addLine(to: CGPoint(x: bounds.width - 200, y: bounds.height / 2))
        compassLine.addArc(withCenter: CGPoint(x: 200, y: bounds.height / 2), radius: bounds.width - 400, startAngle: -(CGFloat.pi / 2), endAngle: CGFloat.pi / 2, clockwise: true)
        compassLine.move(to: CGPoint(x: bounds.width - 200, y: bounds.height / 2 + bounds.width - 400))
        compassLine.addArc(withCenter: CGPoint(x: bounds.width - 200, y: bounds.height / 2), radius: bounds.width - 400, startAngle: CGFloat.pi / 2, endAngle: -(CGFloat.pi / 2), clockwise: true)
        compassLine.stroke()
        rulerLine.move(to: CGPoint(x: bounds.width / 2, y: 50))
        rulerLine.addLine(to: CGPoint(x: bounds.width / 2, y: bounds.height - 50))
        rulerLine.stroke()
    }
    
    func angleBisector() {
        let rulerLine = UIBezierPath()
        let compassLine = UIBezierPath()
        rulerLine.move(to: CGPoint(x: 200, y: bounds.height / 2))
        rulerLine.addLine(to: CGPoint(x: bounds.width - 200, y: bounds.height / 2))
    }
    //nixjaf-xyXdub-muvto8
//eakcu5-o26eus-cis74y
//75errt-f85e7y-5t7yru
//hvgu35-5348yt-e45y9f  Real One --> nixjaf-xyXdub-muvto8
//93458w-vy5gt3-4etyrj
//gn8365-85h845-frghm4
    //nixjaf-xyXdub-muvto8
}
