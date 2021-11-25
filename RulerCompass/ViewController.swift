import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func drawLineSegmentBisector(_ sender: Any) {
        canvasView.forAngleBisector = false
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func drawAngleBisector(_ sender: Any) {
        canvasView.forAngleBisector = true
        canvasView.setNeedsDisplay()
    }
    

}

