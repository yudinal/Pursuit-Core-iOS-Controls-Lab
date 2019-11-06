import UIKit

class ViewController: UIViewController {
    
    // MARK: -IBOutlets
    
    @IBOutlet var valueLabels: [UILabel]!
    @IBOutlet var suitImageViews: [UIImageView]!
    @IBOutlet var cardView: UIView!
    
    // MARK: -Internal variables
    
    var card: Card = Card(suit: .heart, value: .ace) {
        didSet {
            valueLabels.forEach { $0.text = "\(card.value.getSymbol())" }
            suitImageViews.forEach { $0.image = card.suit.getImage() }
        }
    }
    
    // MARK: -Lifecycle Overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardView.layer.borderWidth = 5
    }
    
    // MARK: -IBActions
    
    @IBAction func newSuitSelected(_ sender: UISegmentedControl) {
        guard let newSuit = Suit(rawValue: sender.selectedSegmentIndex) else {
            fatalError("Developer Error: Unknown suit")
        }
        card = Card(suit: newSuit, value: card.value)
    }
    
    @IBAction func cardValueChanged(_ sender: UIStepper) {
        guard let newValue = CardValue(rawValue: Int(sender.value)) else {
            fatalError("Developer Error: Invalid card value")
        }
        card = Card(suit: card.suit, value: newValue)
    }
}

