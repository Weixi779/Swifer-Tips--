//
//  Tuple.swift
//  SwifterTips
//
//  Created by 孙世伟 on 2021/10/23.
//

import Foundation

//自古以来 第三方交换
func swap1<T>(a: inout T, b: inout T) {
    let temp = a
    a = b
    b = temp
}

//加入多元组 一步到位
func swap2<T>(a: inout T, b: inout T) {
    (a,b) = (b,a)
}
