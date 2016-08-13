//: Playground - noun: a place where people can play

import UIKit

enum SignUpFormField {
    case FirstName(String)
    case LastName(String)
    case EmailAddress(String)
    case DOB(NSDate)
}

let taylorSwiftsBday: NSDate = {
    let gregorianCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
    let dateComponents = NSDateComponents()
    dateComponents.day = 13
    dateComponents.month = 12
    dateComponents.year = 1989
    return gregorianCalendar?.dateFromComponents(dateComponents) ?? NSDate()
}()

let numberOfTaylorSwiftSongsFavorited = 93

if case 0...225 = numberOfTaylorSwiftSongsFavorited {
    print("this is a valid number of favorited Taylor Swift Songs")
}

if case 0...10 = 5 {
    print("Yes")
}

[1,2,3]
    .map { digit in return "\(digit)" }
