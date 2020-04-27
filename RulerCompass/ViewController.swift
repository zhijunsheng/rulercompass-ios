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
    
    @IBAction func triangleBisector(_ sender: UIButton) {
        canvasView.figureIndex = 2
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func perpendicularleBisector(_ sender: UIButton) {
        canvasView.figureIndex = 3
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func perpendicular2(_ sender: UIButton) {
        canvasView.figureIndex = 4
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func parallel(_ sender: UIButton) {
        canvasView.figureIndex = 5
        canvasView.setNeedsDisplay()
    }
}
