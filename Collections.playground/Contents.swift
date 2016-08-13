//: Playground - noun: a place where people can play

import UIKit

// Arrays, equal to List in Java
var array1 = [String]()
var array2 = Array<String>()
var array3 = ["Aap","Noot","Mies"]
let iArray = ["Aap","Noot","Mies"]

array1.isEmpty
array3.count
array3.first
array3.last
array3[2]

array3.append("...")
array3.appendContentsOf(["1","2"])
array3

// Copy an array
var array4 = array3
array4.append("array4")
array3
array4

array3.dynamicType
iArray.dynamicType

// Sets

var set1: Set<String> = []
var set2: Set = ["Aap", "Aap"]

set2.exclusiveOr(array3)


// Dictionary

var dict1 = ["First":"Aap", 2:"Noot", 3:"Mies"]
var dict2 = [1:"Aap", 2:"Noot", 3:"Mies"]
dict1["First"]

dict1.dynamicType
dict2.dynamicType

for (key, value) in dict1 {
    print("\(key) = \(value)")
}

// Where
let a = 1...10

for tel in a where tel % 3 == 0{
    print("\(tel)")
}

for tel in a {
    switch(tel) {
        
    case (tel) where tel % 3 == 0:
        print("\(tel) deelbaar door 3")
        fallthrough
        
    case (tel) where tel % 2 == 0:
        print("\(tel) deelbaar door 2")
        
    default:
        print("Niet deelbaar")
        
    }
    
}

