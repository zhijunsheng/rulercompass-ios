import UIKit
class CanvasView: UIView {
    var drawFlag = -23
    override func draw(_ rect: CGRect) {
        if drawFlag == 1 {
            drawLineSegmentBisector()
        } else if drawFlag == 2 {
            drawAngleBisector()
        } else if drawFlag == 3 {
            triangle()
        } else if drawFlag == 4 {
            rightAngle1()
        } else if drawFlag == 5 {
            rightAngle2()
        }
        
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
        circle1()
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
    func circle1() {
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
    
    
    
    func triangle() {
        lineSegments()
        circles3()
        answer3()
    }
    func lineSegments() {
        let lineSegments1 = UIBezierPath()
        lineSegments1.move(to: CGPoint(x: 344, y: 83))
        lineSegments1.addLine(to: CGPoint(x: 344, y: 343))
        lineSegments1.addLine(to: CGPoint(x: 244, y: 343))
        lineSegments1.addLine(to: CGPoint(x: 244, y: 583))
        lineSegments1.lineWidth = 10
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        lineSegments1.stroke()
    }
    func circles3() {
        let c1 = UIBezierPath(arcCenter: CGPoint(x: 244, y: 343), radius: 240, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        let c2 = UIBezierPath(arcCenter: CGPoint(x: 344, y: 343), radius: 260, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        c1.lineWidth = 10
        c2.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        c1.stroke()
        c2.stroke()
    }
    func answer3() {
        let aLine = UIBezierPath()
        aLine.move(to: CGPoint(x: 244, y: 583))
        aLine.addLine(to: CGPoint(x: 344, y: 343))
        aLine.lineWidth = 10
        #colorLiteral(red: 0.745601356, green: 0.2564220428, blue: 0.6603657603, alpha: 1).setStroke()
        aLine.stroke()
    }
    
    
    
    
    func rightAngle1() {
        horizontalLineSegment()
        point1()
        circles4()
        answer4()
    }
    func point1() {
        let p1 = UIBezierPath(arcCenter: CGPoint(x: 482, y: bounds.height / 2), radius: 10, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        p1.lineWidth = 10
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        p1.stroke()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        p1.fill()
    }
    func circles4() {
        let c3 = UIBezierPath(arcCenter: CGPoint(x: 482, y: bounds.height * 0.5), radius: bounds.width * 0.75 - 482, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        let c4 = UIBezierPath(arcCenter: CGPoint(x: bounds.width * 0.75, y: bounds.height * 0.5), radius: (bounds.width * 0.75 - 482) * 2, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        let c5 = UIBezierPath(arcCenter: CGPoint(x: bounds.width * 0.75 - (bounds.width * 0.75 - 482) * 2, y: bounds.height * 0.5), radius: (bounds.width * 0.75 - 482) * 2, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        c3.lineWidth = 10
        c4.lineWidth = 10
        c5.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        c3.stroke()
        c4.stroke()
        c5.stroke()
    }
    func answer4() {
        let aLine = UIBezierPath()
        aLine.move(to: CGPoint(x: 482, y: 0))
        aLine.addLine(to: CGPoint(x: 482, y: bounds.height))
        aLine.lineWidth = 10
        #colorLiteral(red: 0.7342812419, green: 0.2369629443, blue: 0.6376581788, alpha: 1).setStroke()
        aLine.stroke()
    }
    
    
    
    
    func rightAngle2() {
        horizontalLineSegment()
        point2()
        lines1()
        circle2()
        lines2()
        aVerticalLine()
    }
    func point2() {
        let p2 = UIBezierPath(arcCenter: CGPoint(x: 382, y: 231), radius: 10, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        p2.lineWidth = 10
        p2.stroke()
        p2.fill()
    }
    func circle2() {
        let c6 = UIBezierPath(arcCenter: CGPoint(x: 382, y: 231), radius: 182, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        c6.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        c6.stroke()
    }
    func lines1() {
        let l1 = UIBezierPath()
        l1.move(to: CGPoint(x: 382, y: 231))
        l1.addLine(to: CGPoint(x: 257, y: bounds.height * 0.5))
        l1.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        l1.stroke()
        
        let l2 = UIBezierPath()
        l2.move(to: CGPoint(x: 382, y: 231))
        l2.addLine(to: CGPoint(x: 507, y: bounds.height * 0.5))
        l2.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        l2.stroke()
    }
    func lines2() {
        let l3 = UIBezierPath()
        l3.move(to: CGPoint(x: 564, y: 231))
        l3.addLine(to: CGPoint(x: 257, y: bounds.height * 0.5))
        l3.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        l3.stroke()
        
        let l4 = UIBezierPath()
        l4.move(to: CGPoint(x: 200, y: 231))
        l4.addLine(to: CGPoint(x: 507, y: bounds.height * 0.5))
        l4.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        l4.stroke()
        
        let l5 = UIBezierPath()
        l5.move(to: CGPoint(x: 564, y: 231))
        l5.addLine(to: CGPoint(x: 200, y: 231))
        l5.lineWidth = 10
        #colorLiteral(red: 0.3398539424, green: 0.6224563122, blue: 0.168690294, alpha: 1).setStroke()
        l5.stroke()
    }
    func aVerticalLine() {
        let line1 = UIBezierPath()
        line1.move(to: CGPoint(x: 382, y: 0))
        line1.addLine(to: CGPoint(x: 382, y: bounds.height))
        line1.lineWidth = 10
        #colorLiteral(red: 0.745601356, green: 0.2564220428, blue: 0.6603657603, alpha: 1).setStroke()
        line1.stroke()
    }
}
