import UIKit

class CanvasView: UIView {
    var flag: Int = 584034
    
    override func draw(_ rect: CGRect) {
        if flag == 1 {
            challenge1()
        } else if flag == 2 {
            challenge2()
        } else if flag == 3 {
            challenge3()
        } else if flag == 4 {
            challenge4()
        }
    }
    
    func challenge4() {
        let rulerLegend = UIBezierPath()
        rulerLegend.move(to: CGPoint(x: 350, y:150))
        rulerLegend.addLine(to: CGPoint(x: 400, y: 150))
        
        rulerLegend.move(to: CGPoint(x: 350, y: 200))
        rulerLegend.addLine(to: CGPoint(x: 450, y: 200))
        
        rulerLegend.move(to: CGPoint(x: 350, y: 250))
        rulerLegend.addLine(to: CGPoint(x: 475, y: 250))
        rulerLegend.lineWidth = 5
        rulerLegend.stroke()
        
        let rulerPath = UIBezierPath()
        rulerPath.move(to: CGPoint(x: 0, y: bounds.height - 50))
        rulerPath.addLine(to: CGPoint(x: bounds.width, y: bounds.height - 50))
        rulerPath.lineWidth = 5
        rulerPath.stroke()
        
        rulerPath.move(to: CGPoint(x: 350, y: 250))
        rulerPath.addLine(to: CGPoint(x: 350, y: bounds.height - 50))
        rulerPath.lineWidth = 0.5
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        rulerPath.stroke()
        
        rulerPath.move(to: CGPoint(x: 475, y:250))
        rulerPath.addLine(to: CGPoint(x: 475, y: bounds.height - 50))
        rulerPath.lineWidth = 0.5
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        rulerPath.stroke()
        
        let compassPath1 = UIBezierPath(arcCenter: CGPoint(x: 350, y: bounds.height - 50), radius: 100, startAngle: 0, endAngle: -0.5 * CGFloat.pi, clockwise: false)
        compassPath1.lineWidth = 5
        compassPath1.stroke()
        
        let compassPath2 = UIBezierPath(arcCenter: CGPoint(x: 475, y: bounds.height - 50), radius: 50, startAngle: -CGFloat.pi, endAngle: -0.5 * CGFloat.pi, clockwise: true)
        compassPath2.lineWidth = 5
        compassPath2.stroke()
        
        let rulerPath2 = UIBezierPath()
        rulerPath2.move(to: CGPoint(x: 350, y: bounds.height - 50))
        rulerPath2.addLine(to: CGPoint(x: 445, y: bounds.height - 90))
        rulerPath2.addLine(to: CGPoint(x: 475, y: bounds.height - 50))
        rulerPath2.close()
        rulerPath2.lineWidth = 5
        #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1).setStroke()
        rulerPath2.stroke()
    }
    
    func challenge3() {
        let rulerLegend = UIBezierPath()
        rulerLegend.move(to: CGPoint(x: 350, y:150))
        rulerLegend.addLine(to: CGPoint(x: 650, y: 150))
        rulerLegend.lineWidth = 5
        rulerLegend.stroke()
        
        let rulerPath = UIBezierPath()
        rulerPath.move(to: CGPoint(x: 0, y: bounds.height - 50))
        rulerPath.addLine(to: CGPoint(x: bounds.width, y: bounds.height - 50))
        rulerPath.lineWidth = 5
        rulerPath.stroke()
        
        rulerPath.move(to: CGPoint(x: 350, y:150))
        rulerPath.addLine(to: CGPoint(x: 350, y: bounds.height - 50))
        rulerPath.lineWidth = 0.5
        rulerPath.stroke()
        
        rulerPath.move(to: CGPoint(x: 650, y:150))
        rulerPath.addLine(to: CGPoint(x: 650, y: bounds.height - 50))
        rulerPath.lineWidth = 0.5
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        rulerPath.stroke()
        
        let compassPath1 = UIBezierPath(arcCenter: CGPoint(x: 350, y: bounds.height - 50), radius: 300, startAngle: 0, endAngle: -0.5 * CGFloat.pi, clockwise: false)
        compassPath1.lineWidth = 5
        compassPath1.stroke()
        
        let compassPath2 = UIBezierPath(arcCenter: CGPoint(x: 650, y: bounds.height - 50), radius: 300, startAngle: -CGFloat.pi, endAngle: -0.5 * CGFloat.pi, clockwise: true)
        compassPath2.lineWidth = 5
        compassPath2.stroke()
        
        let rulerPath2 = UIBezierPath()
        rulerPath2.move(to: CGPoint(x: 350, y: bounds.height - 50))
        rulerPath2.addLine(to: CGPoint(x: 500, y: 423))
        rulerPath2.addLine(to: CGPoint(x: 650, y: bounds.height - 50))
        rulerPath2.close()
        rulerPath2.lineWidth = 5
        #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1).setStroke()
        rulerPath2.stroke()
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
        rulerPath.stroke()
        
        let compassPath = UIBezierPath()
        compassPath.addArc(withCenter: CGPoint(x: 400 + (bounds.width - 400) / 2, y: bounds.height / 2), radius: 400, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: false)
        
        compassPath.move(to: CGPoint(x: 400 + (bounds.width - 400) / 2, y: bounds.height / 2))
        
        compassPath.addArc(withCenter: CGPoint(x: (bounds.width - 400) / 2, y: bounds.height / 2), radius: 400, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        compassPath.lineWidth = 5
        compassPath.stroke()
        
        let rulerPath2 = UIBezierPath()
        rulerPath2.move(to: CGPoint(x: bounds.width / 2, y: 0))
        rulerPath2.addLine(to: CGPoint(x: bounds.width / 2, y: bounds.height))
        #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1).setStroke()
        rulerPath2.lineWidth = 5
        rulerPath2.stroke()
    }
}
