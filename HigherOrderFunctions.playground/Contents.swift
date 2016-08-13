//: Playground - noun: a place where people can play

import UIKit

// Simple function

func globalAdd(num1: Int, num2: Int) -> Int {
    
    return num1 + num2
    
}

globalAdd(10, num2: 20)


// Higher order function

let numbers = 1...10
func dbl(num: Int) -> Int {
    return num * 2
}

let result1 = numbers.filter({ (value:Int) -> Bool in value % 2 == 0 }).map(dbl)
result1

let filter2 = { (value:Int) -> Bool in value % 2 == 0 }
let result2 = numbers.filter(filter2).map(dbl)
result2

let filter3 = { (value:Int) -> Bool in value % 2 == 0  }
let result3 = numbers.filter(filter2).map(dbl)
result3


