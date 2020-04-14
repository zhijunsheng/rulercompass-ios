import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var canvasView: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func angleBisector(_ sender: Any) {
        canvasView.code = 1
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func triangleFrom3LineSegments(_ sender: Any) {
        canvasView.code = 2
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func bisectLineSegment(_ sender: Any) {
        canvasView.code = 3
        canvasView.setNeedsDisplay()
    }
    @IBAction func perpendicularLine(_ sender: Any) {
        canvasView.code = 4
        canvasView.setNeedsDisplay()
    }
    
}
