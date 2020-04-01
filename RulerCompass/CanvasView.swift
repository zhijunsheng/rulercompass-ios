import UIKit

class CanvasView: UIView {

    override func draw(_ rect: CGRect) {
        let rulerPath = UIBezierPath()
        rulerPath.move(to: CGPoint(x: 400 + (bounds.width - 400) / 2, y: bounds.height / 2))
        rulerPath.addLine(to: CGPoint(x: (bounds.width - 400) / 2, y: bounds.height / 2))
        rulerPath.lineWidth = 5
        
        
        let compassPath = UIBezierPath()
        compassPath.addArc(withCenter: CGPoint(x: 400 + (bounds.width - 400) / 2, y: bounds.height / 2), radius: 400, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: false)
        
        compassPath.move(to: CGPoint(x: 400 + (bounds.width - 400) / 2, y: bounds.height / 2))
        
        compassPath.addArc(withCenter: CGPoint(x: (bounds.width - 400) / 2, y: bounds.height / 2), radius: 400, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        compassPath.lineWidth = 5
        compassPath.stroke()
        
        rulerPath.move(to: CGPoint(x: bounds.width / 2, y: 0))
        rulerPath.addLine(to: CGPoint(x: bounds.width / 2, y: bounds.height))
        rulerPath.stroke()
        
    }
    

}
