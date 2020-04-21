import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var canvasView: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func angleBisector(_ sender: Any) {
        canvasView.problemIndex = 1
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func triangleFrom3LineSegments(_ sender: Any) {
        canvasView.problemIndex = 2
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func bisectLineSegment(_ sender: Any) {
        canvasView.problemIndex = 3
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func perpendicularLine1(_ sender: Any) {
        canvasView.problemIndex = 4
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func perpendicularLine2(_ sender: Any) {
        canvasView.problemIndex = 5
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func parallelLine(_ sender: Any) {
        canvasView.problemIndex = 6
        canvasView.setNeedsDisplay()
    }
    @IBAction func portionOfALine(_ sender: Any) {
        canvasView.problemIndex = 7
        canvasView.setNeedsDisplay()
    }
    
}
