//: Playground - noun: a place where people can play

import UIKit

protocol MyProtocol {
    func sum() -> Int
}

extension MyProtocol {
    func doubleSum() -> Int {
        return 2 * sum()
    }
}

extension MyProtocol {
    func tripleSum() -> Int {
        return 3 * sum()
    }
}

class MyClass: MyProtocol {
    
    let a = 10
    let b = 20
    
    func sum() -> Int {
        return a + b
    }
}

MyClass().sum()
MyClass().doubleSum()
MyClass().tripleSum()


