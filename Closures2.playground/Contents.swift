//: Playground - noun: a place where people can play

import UIKit

// **************************** Closure op basis van een anonieme functie in functie

let numbers = 1...20

func superFilter(stepRate: Int) -> Int -> Bool {
    
    func filterCreator(value: Int) -> Bool {
        return value % stepRate == 0;
    }
    
    return filterCreator
}

let twoFilter = superFilter(10)
numbers.filter(twoFilter)


// **************************** Closure op basis closure type
numbers.filter({ (value: Int) -> Bool in
    return value % 2 == 0 })

// **************************** Op basis van inference is (Int) -> Bool al geanalyseerd
let result3 = numbers.filter({ $0 % 2 == 0 })
result3


// Curried closure
func CurriedSuperFilter(stepRate: Int) -> (value: Int) -> Bool {
    return { value in
        return value % stepRate == 0 }
}

let curriedSuperFilter2 = CurriedSuperFilter(2)
numbers.filter(curriedSuperFilter2)


// **************************** Nested curried closure
func CurriedMultSuperFilter(stepRate: Int) -> (mult: Int) -> (value: Int) -> Bool {
    return { mult in
        { value in
            return value % (stepRate * mult) == 0 } }
}

let curriedSuperFilter6 = CurriedMultSuperFilter(3)(mult: 2)
numbers.filter(curriedSuperFilter6)

