//: Playground - noun: a place where people can play

import UIKit

class Card {
    let user: User?
    
    init(user: User?) {
        self.user = user
    }
}

class User {
    let company: Company?
 
    init(company: Company?) {
        self.company = company
    }
}

class Company {
    let name: String?
    
    init(name: String?) {
        self.name = name
    }
}

let company = Company(name: "Jansen")
let user = User(company: company)
let card = Card(user: nil)

card.user?.company?.name?.uppercaseString

if let uppercaseName = card.user?.company?.name?.uppercaseString {
    uppercaseName
}