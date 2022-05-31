import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rulerCompassView: RulerCompassView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func lineSegmentCenter(_ sender: Any) {
        rulerCompassView.problem = 1
        rulerCompassView.setNeedsDisplay()
    }
    
    @IBAction func angleBisector(_ sender: Any) {
        rulerCompassView.problem = 2
        rulerCompassView.setNeedsDisplay()
    }
    
    @IBAction func rightAngleTriangle(_ sender: Any) {
        rulerCompassView.problem = 3
        rulerCompassView.setNeedsDisplay()
    }
    
    @IBAction func hypRightAngleTriangle(_ sender: Any) {
        rulerCompassView.problem = 4
        rulerCompassView.setNeedsDisplay()
    }
}

