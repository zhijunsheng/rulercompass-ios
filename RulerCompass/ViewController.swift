import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func angleBisector(_ sender: Any) {
        canvasView.flag = 1
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func lineSegmentBisector(_ sender: Any) {
        canvasView.flag = 2
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func triangle(_ sender: Any) {
        canvasView.flag = 3
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func perpendicular(_ sender: Any) {
        canvasView.flag = 4
        canvasView.setNeedsDisplay()
    }
}

