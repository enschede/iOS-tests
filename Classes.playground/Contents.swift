//: Playground - noun: a place where people can play

import UIKit

// Casting

class SuperClass {
    
    deinit {
        print("SuperClass::deinit")
    }
}

class SubClass : SuperClass {
    
}

var instantiatedSuperClass = SuperClass()
var instantiatedSubClass: SuperClass = SubClass()

let subClass1 = instantiatedSuperClass as? SubClass
let subClass2 = instantiatedSubClass as? SubClass

if let subClass = instantiatedSubClass as? SubClass {
    print("Class was subclass")
}

if let subClass = instantiatedSuperClass as? SubClass {
    print("Class was subclass")
}

// ARC

var objectA: SuperClass? = SuperClass()
weak var objectB = objectA

objectA = nil
objectB

// Static methods

