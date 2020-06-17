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
    
    @IBAction func angleBisector(_ sender: Any) {
        canvasView.problemIndex = 1
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func scaleneTri(_ sender: Any) {
        canvasView.problemIndex = 2
        canvasView.setNeedsDisplay()
    }
    
    
    @IBAction func per(_ sender: Any) {
        canvasView.problemIndex = 3
        canvasView.setNeedsDisplay()
    }
    
}


