import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var canvasView: CanvasView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showChallengeOne(_ sender: Any) {
        infoLabel.text = "line segment bisector"
        canvasView.flag = 1
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func showChallengeTwo(_ sender: Any) {
        infoLabel.text = "angle bisector"
        canvasView.flag = 2
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func showChallengeThree(_ sender: Any) {
        infoLabel.text = "use 1 line segment to make 1 triangle"
        canvasView.flag = 3
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func showChallengeFour(_ sender: Any) {
        infoLabel.text = "use 3 line segments to make 1 triangle"
        canvasView.flag = 4
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func showChallengeFive(_ sender: Any) {
        infoLabel.text = "make 1 perpendicular line (inside)"
        canvasView.flag = 5
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func showChallengeSix(_ sender: Any) {
        infoLabel.text = "make l perpendicular line (outside)"
        canvasView.flag = 6
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func showChallengeSeven(_ sender: Any) {
        infoLabel.text = "make l parallel across 1 point"
        canvasView.flag = 7
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func showChallengeEight(_ sender: Any) {
        infoLabel.text = "context02 (option 1)"
        canvasView.flag = 8
        canvasView.setNeedsDisplay()
    }
}

