enum BracketType {
    case square
    case curly
    case smooth
    case angled

    var corruptedCost: Int {
        switch self {
        case .square:
            return 57
        case .curly:
            return 1197
        case .smooth:
            return 3
        case .angled:
            return 25137
        }
    }

    var incompleteCost: Int {
        switch self {
        case .square:
            return 2
        case .curly:
            return 3
        case .smooth:
            return 1
        case .angled:
            return 4
        }
    }
}