//: Playground - noun: a place where people can play

import UIKit

class Square {
    
    var sideLength = 0.0
    
    var area: Double {
        get {
            return sideLength * sideLength
        }
        set {
            sideLength = sqrt(newValue)
        }
    }
    
    var roArea : Double {
        get {
            return sideLength * sideLength
        }
    }
    
}

let square = Square()
square.area = 25.0
square.sideLength
square.area
square.roArea
