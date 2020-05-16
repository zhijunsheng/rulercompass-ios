import UIKit

class ViewController: UIViewController {

    @IBOutlet var canvasView: CanvasView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func lineBisector(_ sender: Any) {
        canvasView.flag = 1
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func angleBisector(_ sender: Any) {
        canvasView.flag = 2
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func drawingTriangle(_ sender: Any) {
        canvasView.flag = 3
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func perpendicularLines(_ sender: Any) {
        canvasView.flag = 5
        canvasView.setNeedsDisplay()
    }

    @IBAction func perpendicularLines2(_ sender: Any) {
        canvasView.flag = 6
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func parallelLine(_ sender: Any) {
        canvasView.flag = 7
        canvasView.setNeedsDisplay()
    }
    @IBAction func contest2(_ sender: Any) {
        canvasView.flag = 8
        canvasView.setNeedsDisplay()
    }
    
}


