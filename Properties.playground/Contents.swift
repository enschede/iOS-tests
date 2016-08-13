//: Playground - noun: a place where people can play

import UIKit

class Thermometer {

    var temp = 10 {
        willSet {
            print("new temp is \(newValue), oldvalue is \(temp)")
        }
        didSet {
            print("new temp is \(temp), oldvalue is \(oldValue)")
        }
    }
}

let thermometer = Thermometer()
thermometer.temp = 15

