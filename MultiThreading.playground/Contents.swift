//: Playground - noun: a place where people can play

import UIKit

let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
dispatch_async(dispatch_get_global_queue(priority, 0)) {
    // do some task
    dispatch_async(dispatch_get_main_queue()) {
        for tel in 1...10 {
            print("Waarde is \(tel)")
        }
    }
}
