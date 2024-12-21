import SwiftUI

class DiceViewModel : ObservableObject {
    @Published private(set) var leftDice = Dice()
    @Published private(set) var rightDice = Dice()
    
    func rollDice() {
        leftDice.roll()
        rightDice.roll()
    }
}
