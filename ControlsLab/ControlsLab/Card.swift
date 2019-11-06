import Foundation

struct Card {
    let suit: Suit
    let value: Int
    init?(suit: Suit, value: Int) {
        guard value < 14 else {
            return nil
        }
        self.suit = suit
        self.value = value
    }
}
