//
//  MutatingProtocol.swift
//  SwifterTips
//
//  Created by 孙世伟 on 2021/10/22.
//

import Foundation
import UIKit

// Swift中的 protocol 可以适用于 class、struct、enum
// 在 struct、enum 中 改变成员的方法必须加 mutating  | class中可以无视
// 为了方便所有人就将 func前 加上 mutating把
// 同理@escaping也是

protocol Vehicle {
    var numberOfWheels: Int { get }
    var color: UIColor { get set }
    mutating func changeColor()
}

struct MyCar: Vehicle {
    let numberOfWheels: Int = 4
    var color: UIColor = .blue
    mutating func changeColor() {
        color = .red
    }
}
