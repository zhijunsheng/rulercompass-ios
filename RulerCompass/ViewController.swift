import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var canvasView: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func angleBisector(_ sender: Any) {
        print("hello")
        canvasView.code = 1
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func triangleFrom3LineSegments(_ sender: Any) {
        print("hi")
        canvasView.code = 2
        canvasView.setNeedsDisplay()
    }
    
}

