import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showChallengeOne(_ sender: Any) {
        canvasView.flag = 1
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func showChallengeTwo(_ sender: Any) {
        canvasView.flag = 2
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func showChallengeThree(_ sender: Any) {
        canvasView.flag = 3
        canvasView.setNeedsDisplay()
    }
}

