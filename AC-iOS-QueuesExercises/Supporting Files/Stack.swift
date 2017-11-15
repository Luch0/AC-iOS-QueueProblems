//
//  Stack.swift
//  AC-iOS-QueuesExercises
//
//  Created by Luis Calle on 11/15/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

struct Stack<T> {
    private var arr = [T]()
    var isEmpty: Bool {
        return arr.isEmpty
    }
    mutating func push(_ newElement: T) {
        arr.append(newElement)
    }
    mutating func pop() -> T? {
        return arr.popLast()
    }
    func peek() -> T? {
        return arr.last
    }
}
