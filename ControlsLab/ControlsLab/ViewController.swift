import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var valueLabels: [UILabel]!
    @IBOutlet var suitImageViews: [UIImageView]!
    @IBOutlet var cardView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func newSuitSelected(_ sender: UISegmentedControl) {
        guard let suit = Suit(rawValue: sender.selectedSegmentIndex) else {
            fatalError("Developer Error: Unknown suit")
        }
    }
    
    @IBAction func cardValueChanged(_ sender: UIStepper) {
    }
}

