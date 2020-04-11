import UIKit
class CanvasView: UIView {
    override func draw(_ rect: CGRect) {
//        drawLineSegmentBisector()
        drawAngleBisector()
    }
    func drawLineSegmentBisector() {
        horizontalLineSegment()
        circles1()
        verticalLine()
        answer1()
    }
    func horizontalLineSegment() {
        let lineSegment1 = UIBezierPath()
        lineSegment1.move(to: CGPoint(x: bounds.width / 2 - bounds.width / 4, y: bounds.height / 2))
        lineSegment1.addLine(to: CGPoint(x: bounds.width / 2 + bounds.width / 4, y: bounds.height / 2))
        lineSegment1.lineWidth = 10
        lineSegment1.stroke()
    }
    func circles1() {
        let halfCircle1 = UIBezierPath(arcCenter: CGPoint(x: bounds.width / 2 - bounds.width / 4, y: bounds.height / 2), radius: bounds.width / 3, startAngle: CGFloat.pi / 2, endAngle: -CGFloat.pi / 2, clockwise: false)
        halfCircle1.lineWidth = 10
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setStroke()
        halfCircle1.stroke()
        let halfCircle2 = UIBezierPath(arcCenter: CGPoint(x: bounds.width / 2 + bounds.width / 4, y: bounds.height / 2), radius: bounds.width / 3, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi / 2, clockwise: false)
        halfCircle2.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        halfCircle2.stroke()
    }
    func verticalLine() {
        let line1 = UIBezierPath()
        line1.move(to: CGPoint(x: bounds.width / 2, y: 0))
        line1.addLine(to: CGPoint(x: bounds.width / 2, y: bounds.height))
        line1.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        line1.stroke()
    }
    func answer1() {
        let aCircle = UIBezierPath(arcCenter: CGPoint(x: bounds.width / 2, y: bounds.height / 2), radius: 10, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        #colorLiteral(red: 0.7342812419, green: 0.2369629443, blue: 0.6376581788, alpha: 1).setStroke()
        aCircle.stroke()
        #colorLiteral(red: 0.7342812419, green: 0.2369629443, blue: 0.6376581788, alpha: 1).setFill()
        aCircle.fill()
    }
    
    
    
    
    func drawAngleBisector() {
        angle()
        circle()
        circles2()
        answer2()
    }
    func angle() {
        let angle1 = UIBezierPath()
        angle1.move(to: CGPoint(x: bounds.width * 0.25, y: bounds.height * 0.25))
        angle1.addLine(to: CGPoint(x: bounds.width * 0.25, y: bounds.height * 0.75))
        angle1.addLine(to: CGPoint(x: bounds.width * 0.75, y: bounds.height * 0.75))
        angle1.lineWidth = 10
        angle1.stroke()
    }
    func circle() {
        let halfCircle3 = UIBezierPath(arcCenter: CGPoint(x: bounds.width * 0.25, y: bounds.height * 0.75), radius: bounds.width * 0.25, startAngle: 0.125 * CGFloat.pi, endAngle: CGFloat.pi * 1.375,  clockwise: false)
        halfCircle3.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        halfCircle3.stroke()
    }
    func circles2() {
        let halfCircle4 = UIBezierPath(arcCenter: CGPoint(x: bounds.width * 0.25, y: bounds.height * 0.5), radius: 200, startAngle: CGFloat.pi * 0.25, endAngle: -CGFloat.pi * 0.25, clockwise: false)
        let halfCircle5 = UIBezierPath(arcCenter: CGPoint(x: bounds.width * 0.5, y: bounds.height * 0.75), radius: 200, startAngle: -CGFloat.pi * 0.25, endAngle: -CGFloat.pi * 0.75, clockwise: false)
        halfCircle4.lineWidth = 10
        halfCircle5.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        halfCircle4.stroke()
        halfCircle5.stroke()
    }
    func answer2() {
        let aRay = UIBezierPath()
        aRay.move(to: CGPoint(x: bounds.width * 0.25, y: bounds.height * 0.75))
        aRay.addLine(to: CGPoint(x: bounds.width * 0.5 + 17.5, y: bounds.height * 0.5 - 17.5))
        aRay.lineWidth = 10
        #colorLiteral(red: 0.745601356, green: 0.2564220428, blue: 0.6603657603, alpha: 1).setStroke()
        aRay.stroke()
    }
    func drawCrossHairs(centerX: CGFloat, centerY: CGFloat) {
        let crossHair : CGFloat = 100
        let chso = UIBezierPath()
        chso.move(to: CGPoint(x: centerX - crossHair, y: centerY))
        chso.addLine(to: CGPoint(x: centerX + crossHair, y: centerY))
        let chst = UIBezierPath()
        chst.move(to: CGPoint(x: centerX, y: centerY - crossHair))
        chst.addLine(to: CGPoint(x: centerX, y: centerY + crossHair))
        #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1).setStroke()
        chst.stroke()
        chso.stroke()
    }
}
