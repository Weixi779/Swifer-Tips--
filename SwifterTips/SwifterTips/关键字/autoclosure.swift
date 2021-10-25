//
//  autoclosure.swift
//  SwifterTips
//
//  Created by 孙世伟 on 2021/10/23.
//

import Foundation

//引入@autoclosure思想
private func logIfTure(_ isture: () -> Bool ) {
    if isture() {
        print("True")
    }
}

private func logIfTureTest() {
    //swift 闭包表达形式
    logIfTure({ return 2 > 1 })
    logIfTure({ 2 > 1 })
    logIfTure{ 2 > 1 }
}

private func logIfTure2(_ isture: @autoclosure () -> Bool ) {
    if isture() {
        print("True")
    }
}

private func logIfTureTest2() {
    logIfTure2(2>1)
}
