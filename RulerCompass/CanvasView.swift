import UIKit

class CanvasView: UIView {
    
    var figureIndex = 5
    
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
        
        if figureIndex == 3 {
            drawPerpendicular1()
        }
        
        if figureIndex == 4 {
            drawPerpendicular2()
        }
        
        if figureIndex == 5 {
            drawParallel()
        }
    }
    
    func drawParallel() {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 100, y: 500))
        pen.addLine(to: CGPoint(x: 600, y: 500))
        pen.lineWidth = 3
        pen.stroke()
        
        let marker = UIBezierPath()
        marker.move(to: CGPoint(x: 340, y: 280))
        marker.addLine(to: CGPoint(x: 360, y: 300))
        marker.move(to: CGPoint(x: 360, y: 280))
        marker.addLine(to: CGPoint(x: 340, y: 300))
        marker.lineWidth = 3
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        marker.stroke()
        
        let circle1 = UIBezierPath(arcCenter: CGPoint(x: 350, y: 290), radius: 270, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: true)
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setStroke()
        circle1.stroke()
      
        let circle2 = UIBezierPath(arcCenter: CGPoint(x: 180, y: 500), radius: 270, startAngle: -CGFloat.pi * 0.1, endAngle: CGFloat.pi * 0.1, clockwise: true)
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        circle2.stroke()
   
        let circle3 = UIBezierPath(arcCenter: CGPoint(x: 520, y: 500), radius: 270, startAngle: CGFloat.pi * 0.9, endAngle: -CGFloat.pi * 0.9, clockwise: true)
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        circle3.stroke()
        
        let circle4 = UIBezierPath(arcCenter: CGPoint(x: 520 - 270, y: 500), radius: 270, startAngle: -CGFloat.pi * 0.8, endAngle: -CGFloat.pi * 0.6, clockwise: true)
        #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setStroke()
        circle4.stroke()
        
        let circle5 = UIBezierPath(arcCenter: CGPoint(x: 180 + 270, y: 500), radius: 270, startAngle: -CGFloat.pi * 0.4, endAngle: -CGFloat.pi * 0.2, clockwise: true)
        #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setStroke()
        circle5.stroke()
        
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 30, y: 290))
        pencil.addLine(to: CGPoint(x: 700, y: 290))
        pencil.lineWidth = 3
        #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1).setStroke()
        pencil.stroke()
    }
    
    func drawPerpendicular2() {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 100, y: 300))
        pen.addLine(to: CGPoint(x: 600, y: 300))
        pen.lineWidth = 3
        pen.stroke()
        
        let marker = UIBezierPath()
        marker.move(to: CGPoint(x: 290, y: 150))
        marker.addLine(to: CGPoint(x: 310, y: 160))
        marker.move(to: CGPoint(x: 310, y: 150))
        marker.addLine(to: CGPoint(x: 290, y: 160))
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        marker.stroke()
        
        let circle1 = UIBezierPath(arcCenter: CGPoint(x: 300, y: 155), radius: 190, startAngle: CGFloat.pi * 0.2, endAngle: CGFloat.pi * 0.8, clockwise: true)
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setStroke()
        circle1.stroke()
        
        let circle2 = UIBezierPath(arcCenter: CGPoint(x: 177, y: 300), radius: 240, startAngle: CGFloat.pi * 0.2, endAngle: CGFloat.pi * 0.5, clockwise: true)
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        circle2.stroke()
        
        let circle3 = UIBezierPath(arcCenter: CGPoint(x: 421, y: 300), radius: 240, startAngle: CGFloat.pi * 0.5, endAngle: CGFloat.pi * 0.8, clockwise: true)
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        circle3.stroke()
        
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 300, y: 105))
        pencil.addLine(to: CGPoint(x: 300, y: 570))
        pencil.lineWidth = 3
        #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1).setStroke()
        pencil.stroke()
        pencil.stroke()
    }
    
    func drawPerpendicular1() {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 100, y: 300))
        pen.addLine(to: CGPoint(x: 600, y: 300))
        pen.lineWidth = 3
        pen.stroke()
        
        let marker = UIBezierPath()
        marker.move(to: CGPoint(x: 390, y: 290))
        marker.addLine(to: CGPoint(x: 410, y: 310))
        marker.move(to: CGPoint(x: 410, y: 290))
        marker.addLine(to: CGPoint(x: 390, y: 310))
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        marker.stroke()

        let circle1 = UIBezierPath(arcCenter: CGPoint(x: 400, y: 300), radius: 100, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setStroke()
        circle1.stroke()

        let circle2 = UIBezierPath(arcCenter: CGPoint(x: 400 - 100, y: 300), radius: 190, startAngle: -CGFloat.pi * 0.5, endAngle: -CGFloat.pi * 0.2, clockwise: true)
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        circle2.stroke()

        let circle3 = UIBezierPath(arcCenter: CGPoint(x: 400 + 100, y: 300), radius: 190, startAngle: -CGFloat.pi * 0.5, endAngle: -CGFloat.pi * 0.8, clockwise: false)
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        circle3.stroke()

        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 400, y: 100))
        pencil.addLine(to: CGPoint(x: 400, y: 500))
        pencil.lineWidth = 3
        #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1).setStroke()
        pencil.stroke()
        pencil.stroke()
    }
    
    func drawCrosshair(x: CGFloat, y: CGFloat) {
        let cross = UIBezierPath()
        cross.move(to: CGPoint(x: x - 30, y: y))
        cross.addLine(to: CGPoint(x: x + 30, y: y))

        cross.move(to: CGPoint(x: x, y: y - 30))
        cross.addLine(to: CGPoint(x: x, y: y + 30))

        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        cross.stroke()
    }
    
    func drawTriangleBisector() {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 100, y: 100))
        pen.addLine(to: CGPoint(x: 300, y: 100))
        
        pen.move(to: CGPoint(x: 100, y: 150))
        pen.addLine(to: CGPoint(x: 350, y: 150))
        
        pen.move(to: CGPoint(x: 100, y: 200))
        pen.addLine(to: CGPoint(x: 400, y: 200))
        
        pen.stroke()
        
        let triangle = UIBezierPath()
        triangle.move(to: CGPoint(x: 200, y: 500))
        triangle.addLine(to: CGPoint(x: 500, y: 500))
            
        triangle.move(to: CGPoint(x: 304, y: 273))
        triangle.addLine(to: CGPoint(x: 200, y: 500))

        triangle.move(to: CGPoint(x: 304, y: 273))
        triangle.addLine(to: CGPoint(x: 500, y: 500))

        triangle.stroke()
        
        let circle1 = UIBezierPath(arcCenter: CGPoint(x: 200, y: 500), radius: 250, startAngle: -CGFloat.pi * 0.4, endAngle: -CGFloat.pi * 0.3, clockwise: true)
        
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setStroke()
        circle1.stroke()
        
        let circle2 = UIBezierPath(arcCenter: CGPoint(x: 500, y: 500), radius: 300, startAngle: -CGFloat.pi * 0.8, endAngle: -CGFloat.pi * 0.6, clockwise: true)
        
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setStroke()
        circle2.stroke()
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
