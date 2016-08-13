//: Playground - noun: a place where people can play

import UIKit

// Guard
func decrease(value: Int) -> Int? {
    guard let step1: Int = value - 1 where value > 1 else {
        return nil
    }
    
    guard let step2: Int = step1 - 1 where step1 > 1 else {
        return nil
    }
    
    return step2
}

decrease(3)
decrease(2)




// Throwing errors
enum MyError : ErrorType {
    case Negative(value: Int)
}

extension Int {
    func isEven() -> Bool {
        return self % 2 == 0
    }
    
    func isZeroOrPositive() -> Bool {
        return self >= 0
    }
}

func causeError(n: Int) throws -> Int? {
    
    guard n.isZeroOrPositive() else {
        throw MyError.Negative(value: n)
    }
    
    guard n.isEven() else {
        return nil
    }
    
    return n
}

try causeError(1)
try causeError(2)
try? causeError(-1)

do {
    try causeError(1)
    try causeError(-2)
} catch MyError.Negative(let n) where n % 2 == 0 {
    print("Error occured on even negative \(n)")
} catch MyError.Negative(let value) {
    print("Error on odd negative occured \(value)")
} catch {
    print("Default error occured")
}

try! causeError(-1)
