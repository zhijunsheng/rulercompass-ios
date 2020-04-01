import UIKit
class CanvasView: UIView {
    override func draw(_ rect: CGRect) {
        drawLineSegmentBisector()
    }
    func drawLineSegmentBisector() {
        horizontalLineSegment()
        circles()
        verticalLine()
        answer()
    }
    func horizontalLineSegment() {
        let lineSegment1 = UIBezierPath()
        lineSegment1.move(to: CGPoint(x: bounds.width / 2 - bounds.width / 4, y: bounds.height / 2))
        lineSegment1.addLine(to: CGPoint(x: bounds.width / 2 + bounds.width / 4, y: bounds.height / 2))
        lineSegment1.lineWidth = 10
        lineSegment1.stroke()
    }
    func circles() {
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
    func answer() {
        let answerCircle = UIBezierPath(arcCenter: CGPoint(x: bounds.width / 2, y: bounds.height / 2), radius: 10, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        #colorLiteral(red: 0.7342812419, green: 0.2369629443, blue: 0.6376581788, alpha: 1).setStroke()
        answerCircle.stroke()
        #colorLiteral(red: 0.7342812419, green: 0.2369629443, blue: 0.6376581788, alpha: 1).setFill()
        answerCircle.fill()
    }
}
