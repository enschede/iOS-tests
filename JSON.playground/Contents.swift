//: Playground - noun: a place where people can play

import UIKit

// Getting data from String
let jsonString = "{ \"id\": \"c94d9329-3623-472f-87f4-f94890bca729\", \"version\": 1 }"
let data = jsonString.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)!

let json = try? NSJSONSerialization.JSONObjectWithData(data, options: []) as! [String: AnyObject]
let id = json!["id"]
let version = json!["version"]


// Getting data from URL
