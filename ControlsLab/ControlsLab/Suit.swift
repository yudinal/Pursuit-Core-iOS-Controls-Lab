import Foundation
import UIKit

enum Suit: Int {
    case diamond
    case heart
    case club
    case spade
    
    func getImage() -> UIImage {
        switch self {
        case .diamond:
            return UIImage(systemName: "suit.diamond.fill")!
                .withRenderingMode(.alwaysTemplate)
                .withTintColor(.red)
        case .heart:
            return UIImage(systemName: "suit.heart.fill")!
                .withRenderingMode(.alwaysTemplate)
                .withTintColor(.red)
        case .club:
            return UIImage(systemName: "suit.club.fill")!
                .withRenderingMode(.alwaysTemplate)
                .withTintColor(.black)
        case .spade:
            return UIImage(systemName: "suit.spade.fill")!
                .withRenderingMode(.alwaysTemplate)
                .withTintColor(.black)
        }
    }
}
