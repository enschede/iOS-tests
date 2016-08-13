//: [Previous](@previous)

import Foundation

public class MyTestClass {
    public let name: String
    public let name2 = "Kitty"
    public private(set) var name3 = "Yvette";
    
    public init() {
        name = "Marc"
    }
    
    public func getName() -> String {
        return name
    }
    
    public func giveName(name: String, age: UInt8 = 21, length: UInt8) {
        self.name3 = name
    }
    
    public func print(arg: String) {
        print(arg)
    }
    
    public func inoufunc(inout name: String) {
        name = "Hello \(name)"
    }
}

var myTestClass1 = MyTestClass()
var myTestClass2 = MyTestClass()

print( myTestClass1 === myTestClass2 ? "Same identity" : "Not same identity")
print( myTestClass1 === myTestClass2 ? "Equal" : "Not equal")

myTestClass1.giveName("marcEnschede", length: 191)

print(myTestClass1.name,
      myTestClass1.getName(),
      MyTestClass.init(),
      myTestClass1.name3)

let orgText = "Original"
myTestClass1.print(orgText)
print(orgText)




//: [Next](@next)
