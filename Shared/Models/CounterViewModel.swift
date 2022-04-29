//
//  CounterViewModel.swift
//  MVVM Practice (iOS)
//
//  Created by Jinwook Kim on 2022/04/29.
//

import Combine

class CounterViewModel: ObservableObject {
    @Published private var counter = Counter()
    var value: Int {
        counter.value
    }
    var premium: Bool {
        counter.isPremium
    }
    func increment() {
        counter.increment()
    }
}
