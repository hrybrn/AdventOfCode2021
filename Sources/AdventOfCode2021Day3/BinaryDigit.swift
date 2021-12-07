enum BinaryDigit: String {
    case one = "1"
    case zero = "0"

    var not: BinaryDigit {
        switch self {
        case .one:
            return .zero
        case .zero:
            return .one
        }
    }
}