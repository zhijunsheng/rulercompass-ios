import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func angleBisector(_ sender: Any) {
        canvasView.drawAngleBisector()
    }
    
    @IBAction func lineSegmentBisector(_ sender: Any) {
        canvasView.drawLineSegmentBisector()
    }
}

