import UIKit

class CanvasView: UIView {
    var flag: Int = 8
    
    override func draw(_ rect: CGRect) {
        if flag == 1 {
            challenge1()
        } else if flag == 2 {
            challenge2()
        } else if flag == 3 {
            challenge3()
        } else if flag == 4 {
            challenge4()
        } else if flag == 5 {
            challenge5()
        } else if flag == 6 {
            challenge6()
        } else if flag == 7 {
            challenge7()
        } else if flag == 8 {
            challenge8()
        } else {
            
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first!
        let touchLocation = touch.location(in: self)
        print("\(touchLocation.x), \(touchLocation.y)")
    }
    
    private func drawLetter(_ letter: String, x: CGFloat, y: CGFloat, color: UIColor, width: CGFloat, height: CGFloat, fontSize: CGFloat, family: String) {
        
        if let font = UIFont(name: family, size: fontSize) {
            let letterParagrahStyle = NSMutableParagraphStyle()
            letterParagrahStyle.alignment = .center
            let attrStr = NSAttributedString(string: letter, attributes: [.font: font, .foregroundColor: color, .paragraphStyle: letterParagrahStyle])
            attrStr.draw(in: CGRect(x: x, y: y, width: width, height: height))
        } else {
            let letterParagrahStyle = NSMutableParagraphStyle()
            letterParagrahStyle.alignment = .center
            let attrStr = NSAttributedString(string: letter, attributes: [.font: UIFont.systemFont(ofSize: fontSize), .foregroundColor: color, .paragraphStyle: letterParagrahStyle])
            attrStr.draw(in: CGRect(x: x, y: y, width: width, height: height))
        }
    }
    
    func challenge8() {
        drawLetter("7", x: 100, y: 614, color: #colorLiteral(red: 0.1584224392, green: 0.4719286561, blue: 0.9656142592, alpha: 1), width: 40, height: 125, fontSize: 50, family: "Brush Script MT")
        drawLetter("1", x: 200, y: 614, color: #colorLiteral(red: 0.1588514745, green: 0.4727378488, blue: 0.9658799767, alpha: 1), width: 40, height: 125, fontSize: 50, family: "Brush Script MT")
        
        let rulerpath = UIBezierPath()
        rulerpath.move(to: CGPoint(x: 0, y: 564))
        rulerpath.addLine(to: CGPoint(x: 728, y: 564))
        rulerpath.stroke()
        
        let compassPath = UIBezierPath(arcCenter: CGPoint(x: 250, y: 564), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2991024852, green: 0.7571563125, blue: 0.9707965255, alpha: 1).setFill()
        compassPath.fill()
        #colorLiteral(red: 0.2991024852, green: 0.7571563125, blue: 0.9707965255, alpha: 1).setStroke()
        compassPath.stroke()
        
        let compassPath1 = UIBezierPath(arcCenter: CGPoint(x: 478, y: 564), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2991024852, green: 0.7571563125, blue: 0.9707965255, alpha: 1).setFill()
        compassPath1.fill()
        #colorLiteral(red: 0.2991024852, green: 0.7571563125, blue: 0.9707965255, alpha: 1).setStroke()
        compassPath1.stroke()
        
        let rulerLengend = UIBezierPath()
        rulerLengend.move(to: CGPoint(x: 0, y: bounds.height - 50))
        rulerLengend.addLine(to: CGPoint(x: bounds.width, y: bounds.height - 50))
        
        rulerLengend.move(to: CGPoint(x: 314, y: 514))
        rulerLengend.addLine(to: CGPoint(x: 414, y: 614))
        
        rulerLengend.move(to: CGPoint(x: 314, y: 614))
        rulerLengend.addLine(to: CGPoint(x: 414, y: 514))
        rulerLengend.lineWidth = 5
        #colorLiteral(red: 0.4647311568, green: 0.7634620667, blue: 0.2659244537, alpha: 1).setStroke()
        rulerLengend.stroke()
        
        for i in 0..<5 {
            rulerpath.move(to: CGPoint(x: 0, y: 564 - i * 50))
            rulerpath.addLine(to: CGPoint(x: 728, y: 564 - i * 50))
            rulerpath.stroke()
            
            let compassPath3 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 564), radius: CGFloat(678 - 564 + i * 50), startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            compassPath3.stroke()
        }
        
        let compassPath2 = UIBezierPath(arcCenter: CGPoint(x: 364, y: 621), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2991024852, green: 0.7571563125, blue: 0.9707965255, alpha: 1).setFill()
        compassPath2.fill()
        #colorLiteral(red: 0.2991024852, green: 0.7571563125, blue: 0.9707965255, alpha: 1).setStroke()
        compassPath2.stroke()
        
        let answerPointsBox: [CGPoint] = [
            CGPoint(x: 524.5, y: 517),
            CGPoint(x: 551, y: 469.5),
            CGPoint(x: 584, y: 419),
            CGPoint(x: 610.5, y: 365.5),
            CGPoint(x: 125.5, y: 365.5),
            CGPoint(x: 149, y: 419),
            CGPoint(x: 174, y: 469),
            CGPoint(x: 210, y: 517),
        ]
        
        for point in answerPointsBox {
            let compassPath3 = UIBezierPath(arcCenter: point, radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            compassPath3.fill()
            compassPath3.stroke()
        }
    }
    
    
    
    
    func challenge7() {
        drawLetter("6", x: 520, y: 600, color: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), width: 40, height: 125, fontSize: 50, family: "Helvetica")
        drawLetter("6", x: 380, y: 520, color: #colorLiteral(red: 0.3836117685, green: 0.2839791775, blue: 0.9647316337, alpha: 1), width: 40, height: 125, fontSize: 50, family: "Helvetica")
        
        let rulerPath = UIBezierPath()
        rulerPath.move(to: CGPoint(x: 500, y: 0))
        rulerPath.addLine(to: CGPoint(x: 500, y: bounds.height))
        rulerPath.stroke()
        
        let rulerLengend = UIBezierPath()
        rulerLengend.move(to: CGPoint(x: 0, y: bounds.height - 50))
        rulerLengend.addLine(to: CGPoint(x: bounds.width, y: bounds.height - 50))
        
        rulerLengend.move(to: CGPoint(x: 450, y: 450))
        rulerLengend.addLine(to: CGPoint(x: 550, y: 550))
        
        rulerLengend.move(to: CGPoint(x: 450, y: 550))
        rulerLengend.addLine(to: CGPoint(x: 550, y: 450))
        rulerLengend.lineWidth = 5
        #colorLiteral(red: 0.4647311568, green: 0.7634620667, blue: 0.2659244537, alpha: 1).setStroke()
        rulerLengend.stroke()
        
        let answerPath = UIBezierPath()
        answerPath.move(to: CGPoint(x: 0, y: 500))
        answerPath.addLine(to: CGPoint(x: bounds.width, y: 500))
        answerPath.lineWidth = 7.5
        #colorLiteral(red: 0.568627451, green: 0.568627451, blue: 0.568627451, alpha: 1).setStroke()
        answerPath.stroke()
    }
    
    func challenge6() {
        let rulerPath = UIBezierPath()
        
        let compassPath = UIBezierPath(arcCenter: CGPoint(x: 500, y: 500), radius: 250, startAngle: 0.2 * CGFloat.pi, endAngle: 0.8 * CGFloat.pi, clockwise: true)
        compassPath.stroke()
        
        rulerPath.move(to: CGPoint(x: 500, y: 500))
        rulerPath.addLine(to: CGPoint(x: bounds.width - 50, y: bounds.height - 50))
        
        rulerPath.move(to: CGPoint(x: 500, y: 500))
        rulerPath.addLine(to: CGPoint(x: bounds.width - 404, y: bounds.height - 50))
        rulerPath.stroke()
        
        let compassPath1 = UIBezierPath(arcCenter: CGPoint(x: bounds.width - 404, y: bounds.height - 50), radius: 500, startAngle: -0.3 * CGFloat.pi, endAngle:  -0.5 * CGFloat.pi, clockwise: false)
        compassPath1.stroke()
        
        let compassPath2 = UIBezierPath(arcCenter: CGPoint(x: bounds.width - 50, y: bounds.height - 50), radius: 500, startAngle: -0.5 * CGFloat.pi, endAngle: -0.7 * CGFloat.pi, clockwise: false)
        compassPath2.stroke()
        
        let rulerLengend = UIBezierPath()
        rulerLengend.move(to: CGPoint(x: 0, y: bounds.height - 50))
        rulerLengend.addLine(to: CGPoint(x: bounds.width, y: bounds.height - 50))
        
        rulerLengend.move(to: CGPoint(x: 450, y: 450))
        rulerLengend.addLine(to: CGPoint(x: 550, y: 550))
        
        rulerLengend.move(to: CGPoint(x: 450, y: 550))
        rulerLengend.addLine(to: CGPoint(x: 550, y: 450))
        rulerLengend.lineWidth = 5
        #colorLiteral(red: 0.4647311568, green: 0.7634620667, blue: 0.2659244537, alpha: 1).setStroke()
        rulerLengend.stroke()
        
        let rulerPath2 = UIBezierPath()
        rulerPath2.move(to: CGPoint(x: 500, y: 0))
        rulerPath2.addLine(to: CGPoint(x: 500, y: bounds.height))
        rulerPath2.lineWidth = 7.5
        #colorLiteral(red: 0.568627451, green: 0.568627451, blue: 0.568627451, alpha: 1).setStroke()
        rulerPath2.stroke()
    }
    
    func challenge5() {
        let rulerPath = UIBezierPath()
        rulerPath.move(to: CGPoint(x: 0, y: bounds.height - 50))
        rulerPath.addLine(to: CGPoint(x: bounds.width, y: bounds.height - 50))
        rulerPath.lineWidth = 5
        
        let compassPath = UIBezierPath(arcCenter: CGPoint(x: bounds.width - 350, y: bounds.height - 50), radius: 100, startAngle: 0, endAngle: CGFloat.pi, clockwise: false)
        compassPath.lineWidth = 5
        compassPath.stroke()
        rulerPath.stroke()
        
        let compassPath2 = UIBezierPath(arcCenter: CGPoint(x: bounds.width - 350, y: bounds.height - 50), radius: 10, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setFill()
        compassPath2.fill()
        
        let compassPath3 = UIBezierPath(arcCenter: CGPoint(x: bounds.width - 250, y: bounds.height - 50), radius: 200, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        compassPath3.lineWidth = 5
        compassPath3.stroke()
        
        let compassPath4 = UIBezierPath(arcCenter: CGPoint(x: bounds.width - 450, y: bounds.height - 50), radius: 200, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        compassPath4.lineWidth = 5
        compassPath4.stroke()
        
        let rulerPath2 = UIBezierPath()
        rulerPath2.move(to: CGPoint(x: bounds.width - 350, y: bounds.height))
        rulerPath2.addLine(to: CGPoint(x: bounds.width - 350, y: 0))
        rulerPath2.lineWidth = 5
        #colorLiteral(red: 0.5700142, green: 0.5676102312, blue: 0.5688944777, alpha: 1).setStroke()
        rulerPath2.stroke()
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
