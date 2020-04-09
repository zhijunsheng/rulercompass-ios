import UIKit

class CanvasView: UIView {
    
    var figureIndex = -1
    

    override func draw(_ rect: CGRect) {
        if figureIndex == 0 {
            drawLineSegmentBisector()
        }
        
        if figureIndex == 1 {
            drawAngleBisector()
        }
        
        if figureIndex == 2 {
            drawTriangleBisector()
        }
//        drawtriangleBisector()
//        drawLineSegmentBisector()
//        drawAngleBisector()
        
//        let x = 370
//        let y = 356
        
        
//        let cross = UIBezierPath()
//        cross.move(to: CGPoint(x: x - 30, y: y))
//        cross.addLine(to: CGPoint(x: x + 30, y: y))
//
//        cross.move(to: CGPoint(x: x, y: y - 30))
//        cross.addLine(to: CGPoint(x: x, y: y + 30))
//
//        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
//        cross.stroke()
        
    }
    
    func drawTriangleBisector() {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 100, y: 200))
        pen.addLine(to: CGPoint(x: 200, y: 200))
        
        pen.move(to: CGPoint(x: 100, y: 250))
        pen.addLine(to: CGPoint(x: 200, y: 250))
        
        pen.move(to: CGPoint(x: 100, y: 300))
        pen.addLine(to: CGPoint(x: 200, y: 300))
        
        pen.stroke()
        
        let triangle = UIBezierPath()
        triangle.move(to: CGPoint(x: 500, y: 200))
        triangle.addLine(to: CGPoint(x: 450, y: 300))
            
        triangle.move(to: CGPoint(x: 450, y: 300))
        triangle.addLine(to: CGPoint(x: 550, y: 300))
        
        triangle.move(to: CGPoint(x: 550, y: 300))
        triangle.addLine(to: CGPoint(x: 500, y: 200))

        triangle.stroke()
    }
    
    func drawAngleBisector() {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 200, y: 300))
        pen.addLine(to: CGPoint(x: 500, y: 200))
        pen.addLine(to: CGPoint(x: 200, y: 300))
        pen.addLine(to: CGPoint(x: 500, y: 400))
        
        pen.lineWidth = 3
        pen.stroke()
        
        let circle1 = UIBezierPath(arcCenter: CGPoint(x: 200, y: 300), radius: 180, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi / 2, clockwise: true)
        
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setStroke()
        circle1.stroke()
        
        let circle2 = UIBezierPath(arcCenter: CGPoint(x: 370, y: 243), radius: 180, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi / 2, clockwise: true)
        
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setStroke()
        circle2.stroke()
        
        let circle3 = UIBezierPath(arcCenter: CGPoint(x: 370, y: 356), radius: 180, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi / 2, clockwise: true)
        
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setStroke()
        circle3.stroke()
        
        let djfndf = UIBezierPath()
        djfndf.move(to: CGPoint(x: 200, y: 300))
        djfndf.addLine(to: CGPoint(x: 700, y: 300))
         
        djfndf.lineWidth = 3
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setStroke()
        djfndf.stroke()
    }
    
    func drawLineSegmentBisector() {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 200, y: 300))
        pen.addLine(to: CGPoint(x: 500, y: 300))
        
        pen.lineWidth = 3
        pen.stroke()
        
        let circle1 = UIBezierPath(arcCenter: CGPoint(x: 200, y: 300), radius: 180, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi / 2, clockwise: true)
        
        #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1).setStroke()
        circle1.stroke()
        
        let circle2 = UIBezierPath(arcCenter: CGPoint(x: 500, y: 300), radius: 180, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi / 2, clockwise: false)
        
        #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1).setStroke()
        circle2.stroke()
        
        let djfndf = UIBezierPath()
        djfndf.move(to: CGPoint(x: 200 + 150, y: 100))
        djfndf.addLine(to: CGPoint(x: 200 + 150, y: 500))
         
        djfndf.lineWidth = 3
        djfndf.stroke()
    }
    
    
}
