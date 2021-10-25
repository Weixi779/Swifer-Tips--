//
//  Sequence.swift
//  SwifterTips
//
//  Created by 孙世伟 on 2021/10/22.
//

import Foundation

// for...in 可以用于所有实现Sequence的类型上
// 首先要实现IteratorProtocol 改变其next函数操作
// 在用struct包装一下
class ReverseIterator<T> : IteratorProtocol {
    typealias Element = T
    
    var array: [Element]
    var currentIndex = 0
    
    init(array: [Element]) {
        self.array = array
        currentIndex = array.count - 1
    }
    
    func next() -> Element? {
        if currentIndex < 0 {
            return nil
        } else {
            let element = array[currentIndex]
            currentIndex -= 1
            return element
        }
    }
}


struct ReverseSequence<T>: Sequence {
    var array: [T]
    init(array: [T]) {
        self.array = array
    }
    typealias IteratorType = ReverseIterator<T>
    
    func makeIterator() -> IteratorType {
        return ReverseIterator(array: self.array)
    }
}
private func SequenceTest() {
    let array = [0,1,2,3,4]
    for i in ReverseSequence(array: array) {
        print(i)
    }
}

