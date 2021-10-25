//
//  Operator .swift
//  SwifterTips
//
//  Created by 孙世伟 on 2021/10/23.
//

import Foundation


struct Vector2D {
    var x: Double
    var y: Double
    
    static func +(left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y + right.y)
    }
}

let v1 = Vector2D(x: 2.0, y: 4.0)
let v2 = Vector2D(x: 1.0, y: 3.0)
let v3 = v1 + v2
