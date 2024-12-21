struct Dice {
    private(set) var value : Int
    var assetImage : String {
        get {
            return "Dice\(value)"
        }
    }
    init() {
        value = Int.random(in: 1...6)
    }
    
    mutating func roll() {
        value = Int.random(in: 1...6)
    }
}
