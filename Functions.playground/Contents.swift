//: Playground - noun: a place where people can play

import UIKit

func calc(n1: Int, n2 :Int, n3: Int) -> Int? {
    return n1 + n2 + n3
}

calc(1, n2: 2, n3: 3)

func calc2(n1: Int, _ n2 :Int, extra n3: Int, default1 n4: Int = 0, default2 n5: Int = 0) -> Int {
    return n1 + n2 + n3 + n4 + 2 * n5
}

calc2(1, 2, extra: 3)
calc2(1, 2, extra: 3, default1: 1)
calc2(1, 2, extra: 3, default1: 1, default2: 1)
calc2(1, 2, extra: 3, default2: 1)


