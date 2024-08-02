public extension Array where Element == Int {
    func startsWithZero() -> Bool {
        self.first == 0
    }
}
