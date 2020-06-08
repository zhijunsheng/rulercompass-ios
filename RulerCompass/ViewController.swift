import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func lineBisector(_ sender: Any) {
        canvasView.problemIndex = 0
        canvasView.setNeedsDisplay()
    }
    
}

