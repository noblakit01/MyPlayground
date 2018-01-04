//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func trap(_ height: [Int]) -> Int {
    guard height.count > 0 else {
        return 0
    }
    var numRain = 0
    var startHeight = height.first!
    var startIndex = 0
    for i in 1..<height.count {
        if height[i] == startHeight {
            continue
        } else if height[i] > startHeight {
            startHeight = height[i]
            startIndex = i
        } else {
            let delta = startHeight - height[i]
            numRain += delta
            if i == height.count - 1 {
                numRain -= delta * (i - startIndex)
            }
        }
    }
    return numRain
}

trap([3,2,1,2,1])
