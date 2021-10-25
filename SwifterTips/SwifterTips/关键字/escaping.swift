//
//  escaping.swift
//  SwifterTips
//
//  Created by 孙世伟 on 2021/10/23.
//

import Foundation

//@escaping 作为 Swift 函数式的核心方式之一
//在大中小的方法中应该都有遇见

class escaping {
    func dowork(block: () -> ()) {
        block()
    }
    // 这样最简单的闭包 包含了一个假设 block 会在 dowork 执行后直接完成
    // 线性结构 block -> dowork
    // 那么如果我想同步完成 就需要 block 逃逸
    
    func doworkAsync(block: @escaping () -> ()) {
        DispatchQueue.main.async {
            block()
        }
    }
    
    // 这样写完 dowork 返回后被调用
    // 但是在闭包内使用了self 就会很傻比、、
    var foo = "foo"
    
    func method1() {
        dowork {
            print(foo) //foo
        }
        foo = "bar"
    }
    
    func method2() {
        doworkAsync {
            print(self.foo)
        }
        foo = "bar"
    }
    
    func method3() {
        doworkAsync { [weak self] in
            print(self?.foo ?? "nil")
        }
        foo = "bar"
    }
    func test() {
        let esc = escaping()
        escaping().method3() // -> "nil"
        esc.method1() // -> "foo"
        esc.method2() // -> "bar"
        esc.method3() // -> "bar"
    }
}
