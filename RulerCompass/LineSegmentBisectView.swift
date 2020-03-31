import UIKit

class LineSegmentBisectView: UIView {

    
    
    
    override func draw(_ rect: CGRect) {
        let leftX = 200
        let rightX = 600
        let lineY = 512
        
        let lineSegmentPath = UIBezierPath()
        lineSegmentPath.move(to: CGPoint(x: rightX, y: lineY))
        lineSegmentPath.addLine(to: CGPoint(x: leftX, y: lineY))
        lineSegmentPath.lineWidth = 5
        lineSegmentPath.stroke()
        
        let arc1 = UIBezierPath(arcCenter: CGPoint(x: leftX, y: lineY), radius: 400, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).setStroke()
        arc1.stroke()
        
        let arc2 = UIBezierPath(arcCenter: CGPoint(x: rightX, y: lineY), radius: 400, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).setStroke()
        arc2.stroke()
        
    }

}
