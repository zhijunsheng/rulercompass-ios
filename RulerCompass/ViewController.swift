import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showAngleBisector(_ sender: Any) {
        canvasView.flag = 1
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func showLineBisector(_ sender: Any) {
        canvasView.flag = 2
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func showTriangle(_ sender: Any) {
        canvasView.flag = 3
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func showPerpendicular(_ sender: Any) {
        canvasView.flag = 4
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func showPerpendicular2(_ sender: Any) {
        canvasView.flag = 5
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func showCircle(_ sender: Any) {
        canvasView.flag = 6
        canvasView.setNeedsDisplay()
    }

    @IBAction func showParallel(_ sender: Any) {
        canvasView.flag = 7
        canvasView.setNeedsDisplay()
    }
}

