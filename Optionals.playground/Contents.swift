//: Playground - noun: a place where people can play

import UIKit

class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()

let rc1 = john.residence?.numberOfRooms

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}

john.residence?.dynamicType

john.residence = Residence()

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}

john.dynamicType
john.residence.dynamicType
john.residence!.dynamicType
john.residence?.dynamicType

// Where
let kitty:Int? = 49

switch(kitty) {
case .Some(let leeftijd) where leeftijd % 4 == 0:
    print("Leeftijd is deelbaar door 4 (\(leeftijd))")
case .Some(let leeftijd) where leeftijd % 2 == 0:
    print("Leeftijd is even (\(leeftijd))")
case .None:
    print("Geen leeftijd")
default:
    print("Leeftijd is oneven")
}

// Default maken middels een Optional extention
extension Optional {
    func orElse(defaultValue: Wrapped) -> Wrapped {
        switch(self) {
        case .None:
            return defaultValue
        case .Some(let value):
            return value
        }
    }
}

let marc:String? = nil
marc.orElse("emptyName")
