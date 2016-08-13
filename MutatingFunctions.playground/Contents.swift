//: Playground - noun: a place where people can play

import UIKit

struct Persoon {
    var naam: String
    
    // struct is immutable (omdat self immutable is)
    mutating func exclaim() {
        naam = naam + "!"
    }
}

var kitty = Persoon(naam: "Kitty de Jonge")
kitty.naam

var kittyGetrouwd = kitty
kittyGetrouwd.naam = "Kitty Enschede"

kitty.naam
kittyGetrouwd.naam


// Mag alleen een var zijn omdat de waarde muteert
var kitty2 = kitty
kitty2.exclaim()
kitty2.exclaim()

kitty2.naam
