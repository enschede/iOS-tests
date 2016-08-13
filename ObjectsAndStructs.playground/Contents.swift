//: Playground - noun: a place where people can play

import UIKit

class MyClass {
    
    var valueA = 10
    var valueB = 20
}

let object1 = MyClass()
let object2 = object1       // Dit is een copy by reference (omdat het een object is)
object2.valueA = 30

print(object1.valueA)
print(object2.valueA)

struct MyStruct {
    
    var valueA = 10
    var valueB = 20
}

let object1s = MyStruct()
let object2s = object1s
var object3s = object1s

// object2s.valueA = 30     // Omdat object2s een constante is, geen wijziging van waarden
object3s.valueA = 30        // Dit is een copy by value (omdat het een struct is)

print(object1s.valueA)
print(object3s.valueA)



class MySubClass : MyClass {
    
    func sum() -> Int {
        return 2 * (valueA + valueB)
    }
}

print(MySubClass().sum())

