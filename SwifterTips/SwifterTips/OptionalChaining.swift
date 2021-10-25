//
//  OptionalChaining.swift
//  SwifterTips
//
//  Created by 孙世伟 on 2021/10/23.
//

import Foundation

class Toy {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Pet {
    var toy: Toy?
}

class Child {
    var pet: Pet?
}
// 经常写leetocde 一定明白 toyName是 String?
// let toyName = xiaoming.pet?.toy?.name
// 那么我们想正常使用就
// if let toyName = xiaoming.pet?.toy?.name { }

// 那么我们想扩展一点 该怎么办
extension Toy {
    func play() { }
}

//写个闭包能穿入child的
let playClosure = { (child: Child) -> ()? in child.pet?.toy?.play() }
//if let result = playClosure(xiaoming) {
//  print("我的玩具, 嘿嘿 嘿嘿")
//} else {
//  print("我要买玩具 :[")
//}
