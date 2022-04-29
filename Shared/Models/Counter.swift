//
//  Model.swift
//  MVVM Practice (iOS)
//
//  Created by Jinwook Kim on 2022/04/29.
//

struct Counter {
    var value = 0
    var isPremium = false
    mutating func increment() {
        value += 1
        if value.isMultiple(of: 3) {
            isPremium = true
        } else {
            isPremium = false
        }
    }
}
