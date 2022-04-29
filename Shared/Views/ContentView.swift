//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/04/29.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var counterViewModel: CounterViewModel
    init() {
        self.counterViewModel = CounterViewModel()
    }
    var body: some View {
        VStack {
            Text(counterViewModel.premium ? "PREMIUM" : "")
                .font(.largeTitle)
                .foregroundColor(.green)
                .frame(width: 200, height: 100)
            Text(counterViewModel.value, format: .number)
                .font(.title)
            Button("Increment", action: counterViewModel.increment)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
