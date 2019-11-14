import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet var suits: [UILabel]!
    @IBOutlet var values: [UILabel]!
    @IBOutlet weak var suitImageView: UIImageView!
    @IBOutlet weak var suitControl: UISegmentedControl!
    @IBOutlet weak var valueControl: UIStepper!
    var valueInController: Int = 7 {
        didSet {
            for value in values {
                value.text = "\(valueInController)"
                if valueControl.value == 11 {
                    value.text = "J"
                } else if valueControl.value == 12 {
                    value.text = "Q"
                } else if valueControl.value == 13 {
                    value.text = "K"
                } else if valueControl.value == 14 {
                    value.text = "T"
                }
            }
        }
    }
    
    var currentSegment: Int = 0 {
        didSet {
            switch suitControl.selectedSegmentIndex {
            case 0:
                suits.forEach({$0.text = "♠️"})
            case 1:
                suits.forEach({$0.text = "♣️"})
            case 2:
                suits.forEach({$0.text = "♦️"})
            case 3:
                suits.forEach({$0.text = "♥️"})
            default:
                print("error")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureStepper()
        designCardView()
    }
    func configureStepper() {
        valueControl.minimumValue = 1
        valueControl.maximumValue = 14
        valueControl.stepValue = 1
        
        valueControl.value = 1
        
    }
    
    func designCardView(){
        suitImageView.layer.borderWidth = 3
        suitImageView.layer.borderColor = UIColor.black.cgColor
        suitImageView.layer.cornerRadius = 25
    }
    
    @IBAction func suitChange(_ sender: UISegmentedControl) {
        currentSegment = suitControl.selectedSegmentIndex
    }
    @IBAction func valueChange(_ sender: UIStepper) {
        valueInController = Int(valueControl.value)
    }
    
}

