//: Playground - noun: a place where people can play

import UIKit

enum CompassPoint {
    case North
    case South
    case East
    case West
}

let direction = CompassPoint.North
let myDirection: CompassPoint = .North

enum ArgumentedEnum {
    case klas(Int)
    case werk(String)
}

let yvette = ArgumentedEnum.klas(2)
let maurice = ArgumentedEnum.werk("ict")


// Recursive

enum ArithmeticExpression {
    case Number(Int)
    indirect case Addition(ArithmeticExpression, ArithmeticExpression)
    indirect case Multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.Number(5)
let four = ArithmeticExpression.Number(4)
let sum = ArithmeticExpression.Addition(five, four)
let product = ArithmeticExpression.Multiplication(sum, ArithmeticExpression.Number(2))

func evaluate(expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .Number(value):
        return value
    case let .Addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .Multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))
