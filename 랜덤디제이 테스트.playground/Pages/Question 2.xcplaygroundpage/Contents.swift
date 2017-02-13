//: [1번 문제](@previous)

/*:
# 2번 문제
## Queue 구조체 만들기
#### 20점
 
다음과 같이 문자열로 동작하는 Queue 구조체를 완성하라.
 
Complete the Queue structure that receives String
*/

import Foundation

struct Queue {
    var queueArray:[String] = []
    var index: Int = 0
    
    mutating func enqueue (element:String) {
        queueArray.append(element)
        
    }
    
    mutating func dequeue() -> String {
        
        let result: String = queueArray[index]
        
        if index < queueArray.count{
            
            index += 1
            
        }
        return result
        
        
    }
}

var newQueue = Queue()
newQueue.enqueue(element: "Leonard")
newQueue.enqueue(element: "Sheldon")
newQueue.enqueue(element: "Penny")
newQueue.enqueue(element: "Howard")
newQueue.enqueue(element: "Rajesh")

//: ### 정답 확인 영역
let firstOne = newQueue.dequeue()
assert(firstOne == "Leonard")
let secondOne = newQueue.dequeue()
assert(secondOne == "Sheldon")

//: [3번 문제](@next)
