//: [2번 문제](@previous)

/*: 
# 3번 문제
## Stack 구조체 만들기
#### 20점
다음과 같이 문자열로 동작하는 **Stack** 구조체를 완성하라. [Stack이란?](https://ko.wikipedia.org/wiki/스택)

Complete the Stack structure that receives String. [About Stack](https://en.wikipedia.org/wiki/Stack_(abstract_data_type))
*/

import Foundation

struct Stack {
    var stackArray:[String] = []
    var topIndex:Int = -1
    var topItem:String? = nil
    
    mutating func push(element:String) {
        stackArray.append(element)
        topIndex += 1
        topItem = element
        
    }
    
    mutating func pop() ->String {
        
        let result :String = stackArray[topIndex]
        if stackArray[topIndex] != nil{
            
            stackArray.remove(at: topIndex)
            topIndex -= 1
            topItem = stackArray[topIndex]
            
            
        }
        
    return result
        
    }
    
    
    
    

    
}

var newStack = Stack()
newStack.push(element: "HistoryListController")
newStack.push(element: "HistoryDetailViewController")
newStack.push(element: "HistoryTimelineViewController")
newStack.push(element: "HistoryChartViewController")

//: ### 정답 확인 영역
let firstVC = newStack.pop()
assert(firstVC == "HistoryChartViewController")
if let topVC = newStack.topItem {
    assert(topVC == "HistoryTimelineViewController")
}


//: [4번 문제](@next)
