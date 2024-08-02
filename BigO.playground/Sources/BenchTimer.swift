import QuartzCore

public final class BenchTimer {
    @inline(__always) public static func measureBlock(
        executionCount: Int = 10,
        closure: () -> Void
    ) -> CFTimeInterval {
        var executionTimes: Double = 0
        
        for _ in 0..<executionCount {
            let startTime = CACurrentMediaTime()
            closure()
            let endTime = CACurrentMediaTime()
            executionTimes += (endTime - startTime)
        }
        
        return executionTimes / Double(executionCount)
    }
}

public extension CFTimeInterval {
    var formattedTime: String {
        self >= 1000 ? "\(Int(self))s"
        : self >= 1 ? String(format: "%.3gs", self)
        : self >= 1e-3 ? String(format: "%.3gms", self * 1e3)
        : self >= 1e-6 ? String(format: "%.3gus", self * 1e6)
        : self < 1e9 ? "0s"
        : String(format: "%.3gns", self * 1e9)
    }
}
