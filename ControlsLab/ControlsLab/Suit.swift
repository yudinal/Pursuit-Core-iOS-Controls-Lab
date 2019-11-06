import Foundation
import UIKit

enum Suit: Int {
    case diamond
    case heart
    case club
    case spade
    func getColor() -> UIColor {
        switch self {
        case .diamond, .heart:
            return .red
        case .club, .spade:
            return .black
        }
    }
}
