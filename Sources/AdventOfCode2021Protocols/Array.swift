public extension Array {

    func unpacked<T>() -> [T]? where Element == Optional<T> {
        var result: [T] = []

        for element in self {
            guard let element = element else {
                return nil
            }

            result.append(element)
        }

        return result
    }
}