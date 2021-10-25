//
//  typealias.swift
//  SwifterTips
//
//  Created by 孙世伟 on 2021/10/24.
//

import Foundation
import UIKit

// typealias : 可以重新命名东西p
// - 目的: 让代码变得更加清晰
// - 注意: 范型的时候自己也要用范型       eg: typealias Worker<T> = Person<T>
// PS: 若要使用多个协议
//typealias Pat = Cat & Dog

//func distance(from point: CGPoint, to anotherPoint: CGPoint) -> Double {
//    let dx = Double(anotherPoint.x - point.x)
//    let dy = Double(anotherPoint.y - point.y)
//    return sqrt(dx*dx + dy*dy)
//}
//
//let origin = CGPoint(x: 0, y: 0)
//let point = CGPoint(x: 1, y: 1)
//
//let d = distance(from: origin, to: point)


// 写的基本没有问题,但是看起来总是有一点不舒服,我们用typealias重新编排一下

typealias Location = CGPoint
typealias Distance = Double

func distance(from location: Location, to anotherLocation: Location) -> Distance {
    let dx = Distance(anotherLocation.x - location.x)
    let dy = Distance(anotherLocation.y - location.y)
    return sqrt(dx*dx + dy*dy)
}

let origin = Location(x: 0, y: 0)
let point = Location(x: 1, y: 1)

let d = distance(from: origin, to: point)
