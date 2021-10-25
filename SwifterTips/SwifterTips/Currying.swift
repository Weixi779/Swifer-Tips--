//
//  Currying.swift
//  SwifterTips
//
//  Created by 孙世伟 on 2021/10/22.
//

import Foundation

//柯里化: 函数式变成的重点特点之一
// - 目的: 一个方法模版避免写出很多重复代码,方便维护
// - 要点: 写好创造函数的模版,返回的依然是一个函数


//最最简单的柯里化
func addOne(num: Int) -> Int {
    return num + 1
}

typealias AddCurrying = (Int) -> Int
func addTo(_ adder: Int) -> AddCurrying {
    return { num in
        return num + adder
    }
}
private let addTwo = addTo(2)
private let result = addTwo(6)

//比较大小柯里化
func greaterThan(_ comparer: Int) -> (Int) -> Bool {
    return { $0 > comparer}
}

private let greaterThan10 = greaterThan(10)
//greaterThan10(1)
//greaterThan10(11)
