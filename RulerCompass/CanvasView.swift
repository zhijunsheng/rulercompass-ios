import UIKit

class CanvasView: UIView {

    override func draw(_ rect: CGRect) {
        challenge2()
        //challenge1()
    }
    
    func challenge2() {
        let rulerPath = UIBezierPath()
        rulerPath.move(to: CGPoint(x: bounds.width / 2 - 350, y: bounds.height / 2))
        rulerPath.addLine(to: CGPoint(x: bounds.width / 2, y: bounds.height / 2 + 350))
        rulerPath.addLine(to: CGPoint(x: bounds.width / 2 + 350, y: bounds.height / 2))
        rulerPath.lineWidth = 5
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setStroke()
        rulerPath.stroke()
        
        let compassPath1 = UIBezierPath(arcCenter: CGPoint(x: bounds.width / 2, y: bounds.height / 2 + 350), radius: 250 * sqrt(2), startAngle: -0.2 * CGFloat.pi, endAngle: -0.8 * CGFloat.pi, clockwise: false)
        compassPath1.lineWidth = 5
         #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        compassPath1.stroke()
        
        let compassPath2 = UIBezierPath(arcCenter: CGPoint(x: bounds.width / 2 - 250, y: bounds.height / 2 + 100), radius: 250 * sqrt(2), startAngle: -0.2 * CGFloat.pi, endAngle: -0.3 * CGFloat.pi, clockwise: false)
        compassPath2.lineWidth = 5
         #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        compassPath2.stroke()
        
        let compassPath3 = UIBezierPath(arcCenter: CGPoint(x: bounds.width / 2 + 250, y: bounds.height / 2 + 100), radius: 250 * sqrt(2), startAngle: -0.7 * CGFloat.pi, endAngle: -0.8 * CGFloat.pi, clockwise: false)
        compassPath3.lineWidth = 5
         #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        compassPath3.stroke()

        let rulerPath1 = UIBezierPath()
        rulerPath1.move(to: CGPoint(x: bounds.width / 2, y: 100))
        rulerPath1.addLine(to: CGPoint(x: bounds.width / 2, y: bounds.height / 2 + 350))
         #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1).setStroke()
        rulerPath1.lineWidth = 5
        rulerPath1.stroke()
    }
    
    func challenge1() {
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
