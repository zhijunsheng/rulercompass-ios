import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func line(_ sender: Any) {
        canvasView.drawFlag = 1
        canvasView.setNeedsDisplay()
    }
    @IBAction func angle(_ sender: Any) {
        canvasView.drawFlag = 2
        canvasView.setNeedsDisplay()
    }
    @IBAction func triangle(_ sender: Any) {
        canvasView.drawFlag = 3
        canvasView.setNeedsDisplay()
    }
    @IBAction func perpendicular1(_ sender: Any) {
        canvasView.drawFlag = 4
        canvasView.setNeedsDisplay()
    }
    @IBAction func perpendicular2(_ sender: Any) {
        canvasView.drawFlag = 5
        canvasView.setNeedsDisplay()
    }
    

}

