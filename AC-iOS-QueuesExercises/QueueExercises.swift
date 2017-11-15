//
//  QueueExercises.swift
//  AC-iOS-QueuesExercises
//
//  Created by C4Q  on 11/14/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

//1. Find the smallest element in a queue

func smallestElement<T: Comparable>(in q: Queue<T>) -> T? {
    if q.isEmpty {
        return nil
    }
    var copyQ = q
    var smallest = copyQ.deQueue()
    while !copyQ.isEmpty {
        let dequedItem = copyQ.deQueue()
        if dequedItem! < smallest! {
            smallest = dequedItem
        }
    }
    return smallest
}

//2. Find the sum of a queue of Ints

func sum(of q: Queue<Int>) -> Int {
    var sum = 0
    var copyQ = q
    while !copyQ.isEmpty {
        sum += copyQ.deQueue()!
    }
    return sum
}

//3. Find out whether or not a queue is in sorted order from smallest to biggest
/*
True example:   (Back) 9 - 6 - 2 - 1 (Front)
False example   (Back) 4 - 19 - 1 - 20 (Front)
False example   (Back) 4 - 19 - 134 - 200 (Front)
*/

func isSorted<T: Comparable>(q: Queue<T>) -> Bool {
    var copyQ = q
    while !copyQ.isEmpty {
        guard let firstDeque = copyQ.deQueue() else {
            return false
        }
        guard let secondDeque = copyQ.deQueue() else {
            return false
        }
        if firstDeque > secondDeque {
            return false
        }
    }
    return true
}

//4. Given a Queue as input, return a reversed queue. (Hint: A stack can be helpful here)

/*
Sample Input:   (Back) 9 - 16 - 2 - 31 (Front)
Sample Output:  (Back) 31 - 2 - 16 - 9 (Front)
 */

func reversed<T>(q: Queue<T>) -> Queue<T> {
    if q.isEmpty {
        return q
    }
    var copyQ = q
    var reversedQ = Queue<T>()
    var helperStack = Stack<T>()
    while !copyQ.isEmpty {
        helperStack.push(copyQ.deQueue()!)
    }
    while !helperStack.isEmpty {
        reversedQ.enQueue(helperStack.pop()!)
    }
    return reversedQ
}

//5 Determine if two Queues are equal

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
    var copyOne = qOne
    var copyTwo = qTwo
    while !copyOne.isEmpty || !copyTwo.isEmpty {
        if copyOne.deQueue() != copyTwo.deQueue() {
            return false
        }
    }
    return true
}

