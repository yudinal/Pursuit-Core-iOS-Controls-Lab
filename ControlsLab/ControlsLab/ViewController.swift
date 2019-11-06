import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var valueLabels: [UILabel]!
    @IBOutlet var suitImageViews: [UIImageView]!
    @IBOutlet var cardView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func newSuitSelected(_ sender: UISegmentedControl) {
    }
    
    @IBAction func cardValueChanged(_ sender: UIStepper) {
    }
}

