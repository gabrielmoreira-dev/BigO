let sizes = [10, 100, 1000, 10000, 100000]

for size in sizes {
    let array = Array(Array(repeating: 0, count: size))
    let execTime = BenchTimer.measureBlock {
        _ = array.startsWithZero()
    }
    print("Size \(size): \(execTime.formattedTime)")
}

for size in sizes {
    let dictionary = Dictionary.generate(size: size)
    let key = String(Int.random(in: 0..<size))
    let execTime = BenchTimer.measureBlock {
        _ = dictionary[key]
    }
    print("Size \(size): \(execTime.formattedTime)")
}
