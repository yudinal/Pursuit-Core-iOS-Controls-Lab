import Foundation

enum CardValue: Int {
    case ace = 1, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
    func getSymbol() -> String {
        switch self {
        case .ace:
            return "A"
        case .jack:
            return "J"
        case .queen:
            return "Q"
        case .king:
            return "K"
        default:
            return "\(self.rawValue)"
        }
    }
}
