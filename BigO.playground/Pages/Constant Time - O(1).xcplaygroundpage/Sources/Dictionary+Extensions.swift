public extension Dictionary where Key == String, Value == Int {
    static func generate(size: Int) -> [String: Int] {
        var result = [String: Int]()
        guard size > 0 else { return result }
        for i in Array(0..<size) { result[String(i)] = i }
        return result
    }
}
