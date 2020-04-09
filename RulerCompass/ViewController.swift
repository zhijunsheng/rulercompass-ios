import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func lineSegmentBisector(_ sender: UIButton) {
        canvasView.figureIndex = 0
        canvasView.setNeedsDisplay()
    }
    
    
    @IBAction func angleBisector(_ sender: UIButton) {
        canvasView.figureIndex = 1
        canvasView.setNeedsDisplay()
    }
    
}

